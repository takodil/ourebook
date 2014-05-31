class Buyer < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password, :password_confirmation
  attr_accessor :password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :email, :first_name, :last_name, :password, :password_confirmation
  validates_uniqueness_of :email
  before_save :encrypt_password

  def self.authenticate(email, password)
  	buyer = Buyer.find_by_email(email)
  	if buyer && buyer.password_hash == BCrypt::Engine.hash_secret(password, buyer.password_salt)
  		buyer
  	else
  		nil
  	end
  end

  def encrypt_password 
  	if password.present?
  		self.password_salt = BCrypt::Engine.generate_salt
  		self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
  	end
  end
end

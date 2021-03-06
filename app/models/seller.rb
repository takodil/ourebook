class Seller < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, 
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  attr_accessible :terms, :privacy, :address, :city, :company_name, :country, :email, :first_name, :last_name, :password, :password_confirmation, :postal_code, :telephone_number, :type_of_company
  attr_accessor :password
  validates_confirmation_of :password
  validates_presence_of :password, :on => :create
  validates_presence_of :address, :city, :company_name, :country, :email, :first_name, :last_name, :password, :password_confirmation, :postal_code, :telephone_number, :type_of_company
  validates_uniqueness_of :email
  validates :terms, :acceptance => {:accept => true}
  validates :privacy, :acceptance => {:accept => true}
  before_save :encrypt_password
  has_many :ebooks
  def self.authenticate(email, password)
  	seller = Seller.find_by_email(email)
  	if seller && seller.password_hash == BCrypt::Engine.hash_secret(password, seller.password_salt)
  		seller
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

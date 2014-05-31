class AddPasswordSaltToBuyer < ActiveRecord::Migration
  def change
  	add_column :buyers, :password_salt, :string  
  end
end

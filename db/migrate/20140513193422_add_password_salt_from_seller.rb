class AddPasswordSaltFromSeller < ActiveRecord::Migration
  def change
  	add_column :sellers, :password_salt, :string  
  end
end

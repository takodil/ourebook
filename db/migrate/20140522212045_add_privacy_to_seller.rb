class AddPrivacyToSeller < ActiveRecord::Migration
  def change
  	add_column :sellers, :privacy, :boolean 
  end
end

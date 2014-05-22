class AddTermsToSeller < ActiveRecord::Migration
  def change
  	add_column :sellers, :terms, :boolean 
  end
end

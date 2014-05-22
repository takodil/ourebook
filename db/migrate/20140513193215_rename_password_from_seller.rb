class RenamePasswordFromSeller < ActiveRecord::Migration
  def change
    rename_column :sellers, :password, :password_hash
  end
end

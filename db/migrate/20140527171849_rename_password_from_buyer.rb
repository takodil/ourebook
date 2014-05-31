class RenamePasswordFromBuyer < ActiveRecord::Migration
  def change
    rename_column :buyers, :password, :password_hash
  end
end

class CreateEbooks < ActiveRecord::Migration
  def change
    create_table :ebooks do |t|
      t.string :title
      t.string :author
      t.integer :price

      t.timestamps
    end
  end
end

class CreateSellers < ActiveRecord::Migration
  def change
    create_table :sellers do |t|
      t.string :company_name
      t.string :type_of_company
      t.string :first_name
      t.string :last_name
      t.string :address
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :telephone_number
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end

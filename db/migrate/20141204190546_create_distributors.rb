class CreateDistributors < ActiveRecord::Migration
  def change
    create_table :distributors do |t|
      t.string :email
      t.string :name
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :company
      t.string :zip
      t.string :province
      t.string :country

      t.timestamps
    end
  end
end

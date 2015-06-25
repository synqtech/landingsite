class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :bill_to
      t.string :address_1
      t.string :address_2
      t.string :postal_code
      t.string :province
      t.string :quote_number
      t.text :note

      t.timestamps
    end
  end
end

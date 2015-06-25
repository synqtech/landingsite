class CreateQuoteLines < ActiveRecord::Migration
  def change
    create_table :quote_lines do |t|
      t.integer :qty
      t.float :discount
      t.integer :quote_id
      t.integer :product_id
      t.string :new_description
      t.timestamps

    end
  end
end

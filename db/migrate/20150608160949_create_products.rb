class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.float :cost
      t.float :price
      t.float :msrp

      t.timestamps
    end
  end
end

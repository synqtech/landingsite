class AddFieldsToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :is_paid, :boolean, :default=>false
    add_column :quotes, :edit_count, :integer, :default=>0
  end
end

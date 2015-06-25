class AddCityToQuote < ActiveRecord::Migration
  def change
    add_column :quotes, :city, :string
  end
end

class AddMoreToRoiSurvey < ActiveRecord::Migration
  def change
    add_column :roi_surveys, :third_party_inventory, :boolean
    add_column :roi_surveys, :price_reduction_markdown, :boolean
    add_column :roi_surveys, :civil_claim_won, :boolean
  end
end

class AddDigiToRoiSurvey < ActiveRecord::Migration
  def change
    add_column :roi_surveys, :digi, :boolean
  end
end

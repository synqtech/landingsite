class AddLossPrevHoursToRoiRurvey < ActiveRecord::Migration
  def change
    add_column :roi_surveys, :lpo_hours, :string
  end
end

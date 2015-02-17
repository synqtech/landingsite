class AddExitWidthToRoiSurvey < ActiveRecord::Migration
  def change
    add_column :roi_surveys, :ey, :string
    add_column :roi_surveys, :exit_width_ft, :integer
  end
end

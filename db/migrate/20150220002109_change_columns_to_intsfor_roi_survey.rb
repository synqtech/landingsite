class ChangeColumnsToIntsforRoiSurvey < ActiveRecord::Migration
  def change

  	change_column :roi_surveys, :eas_effective, :integer

  end
end

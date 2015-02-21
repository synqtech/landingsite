class ChangeColumnsToIntsforRoiSurveyAgain < ActiveRecord::Migration
  def change
  	change_column :roi_surveys, :haba, :integer
  end
end

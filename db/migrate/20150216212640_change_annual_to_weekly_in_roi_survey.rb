class ChangeAnnualToWeeklyInRoiSurvey < ActiveRecord::Migration
  def self.up
  	rename_column :roi_surveys, :total_annual_sales, :total_weekly_sales
  end

  def self.down
  	rename_column :roi_surveys, :total_weekly_sales, :total_annual_sales
  end
end

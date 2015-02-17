class CreateRoiSurveys < ActiveRecord::Migration
  def change
    create_table :roi_surveys do |t|
      t.integer :store_sq_ft
      t.boolean :haba
      t.boolean :cctv
      t.string :walking_svc
      t.boolean :existing_eas
      t.boolean :eas_effective
      t.integer :eas_tags_per_month
      t.integer :total_annual_sales
      t.integer :meat_sales_percent
      t.integer :num_pos_terminals
      t.integer :num_exits
      t.integer :num_exits_6_feet

      t.timestamps
    end
  end
end

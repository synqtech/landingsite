json.array!(@roi_surveys) do |roi_survey|
  json.extract! roi_survey, :id, :store_sq_ft, :haba, :cctv, :walking_svc, :existing_eas, :eas_effective, :eas_tags_per_month, :total_annual_sales, :meat_sales_percent, :num_pos_terminals, :num_exits, :num_exits_6_feet
  json.url roi_survey_url(roi_survey, format: :json)
end

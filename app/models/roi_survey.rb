class RoiSurvey < ActiveRecord::Base

	validates_presence_of :store_sq_ft, :haba, :cctv, :walking_svc, :eas_tags_per_month, :total_weekly_sales, :meat_sales_percent, :lpo_hours, :num_pos_terminals, :num_exits, :exit_width_ft

	def self.square_footages
		square_footages = {
			"Less than 10,000 sq. ft." => 8000,
			"10,000 - 15,000 sq. ft." => 12500,
			"15,000 - 20,000 sq. ft." => 17500,
			"20,000 - 30,000 sq. ft." => 25000,
			"30,000 - 40,000 sq. ft." => 35000,
			"Greater than 40 sq. ft." => 45000		
		}
	end

	def self.weekly_sales
		sales = {
			"Less Than 250,000"  => 250000,
			"250,000 to 350,000"  => 300000,
			"350,000 to 450,000"  => 400000,
			"450,000 to 550,000"  => 500000,
			"550,000 to 650,000"  => 600000,
			"650,000 to 750,000"  => 700000,
			"750,000 to 850,000"  => 800000,
			"Greater Than 850,000"  => 900000
		}
	end

	def self.lpo_hours_select
		sales = {
			"Less Than 5 Hours"  => "1-5 Hours",
			"6-10 Hours"  => "6-10 Hours",
			"11-15 Hours"  => "11-16 Hours",
			"16-20 Hours"  => "16-20 Hours",
			"21-30 Hours"  => "21-30 Hours",
			"31-40 Hours"  => "31-40 Hours",
			"More than 40 Hours"  => "16-20 Hours",
		}
	end

	def self.walking_services
		ws = {"Yes, Internal" => "Yes, Internal",
			  "Yes, External" => "Yes, External",
			  "No" => "No"
			}
	end

	def self.exit_widths
		ew = {"3 feet" => 3, "4 feet" => 4, "6 feet" => 6, "Greater than 6 feet" => 7}
	end

	def self.percentages(increment, start = 0, finish=100)
		percentages = {}
		for i in (start..finish/increment)
			percentages["#{i*increment}%"] = (i*increment)
			
		end

		return percentages
	end
	def _num_gates_needed
		if self.exit_width_ft > 4

			2*self.num_exits

		else #width <= 4
			1*self.num_exits
		end

	end
end

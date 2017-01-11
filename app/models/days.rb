class Days
	def self.display_all(mtn_forecasts)
		days = mtn_forecasts.map do |forecast|
			forecast.day
		end
		"#{days[0]}" + " - " + "#{days[15]}"
	end

	def self.display_days_week1(mtn_forecasts)
			days = mtn_forecasts.map do |forecast|
			forecast.day
		end
		"#{days[0]}" + " - " + "#{days[7]}"
	end
		
	def self.display_days_week2(mtn_forecasts)
			days = mtn_forecasts.map do |forecast|
			forecast.day
		end
		"#{days[8]}" + " - " + "#{days[15]}"
	end
end
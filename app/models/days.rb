class Days
	def self.display_all(mtn_forecasts)
		days = mtn_forecasts.map do |forecast|
			forecast.day
		end
		"#{days[0]}" + " - " + "#{days[15]}"
	end
end
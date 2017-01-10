class Mountain < ApplicationRecord

	def self.all_forecasts
		all.map do |mountain|
			[ mountain.city, Forecast.get_forecasts(mountain) ]
		end.to_h
	end
end

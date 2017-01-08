class Temp
	attr_reader :day_temp, :min_day_temp, :max_day_temp, :night_temp, :evening_temp, :morn_temp

	def initialize(temp)
		@day_temp = temp[:day]
		@min_day_temp = temp[:min]
		@max_day_temp = temp[:max]
		@night_temp = temp[:night]
		@evening_temp = temp[:eve]
		@morn_temp = temp[:morn]
	end

	def convert_kelvin_to_fahrenheit(kelvin)
		(kelvin * 9.0 / 5.0 - 459.67).round(2)
	end
end
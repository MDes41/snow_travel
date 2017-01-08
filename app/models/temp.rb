class Temp
	attr_reader :day_temp, :min_day_temp, :max_day_temp, :night_temp, :evening_temp, :morn_temp

	def initialize(temp)
		@day_temp = temp[:day]
		@night_temp = temp[:night]
		@evening_temp = temp[:eve]
		@morn_temp = temp[:morn]
	end
end
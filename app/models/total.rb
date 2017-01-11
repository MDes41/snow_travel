class Total
	def self.total_snow(mtn_forecasts)
		mtn_forecasts.reduce(0) do |sum, forecast|
			sum + forecast.snow
		end.round(2)
	end

	def self.max_snow(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.snow
		end.max.round(2)
	end

	def self.min_snow(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.snow
		end.min.round(2)
	end

	def self.average_snow(mtn_forecasts)
		days = mtn_forecasts.count
		(total_snow(mtn_forecasts) / days).round(2)
	end

	def self.mostly(mtn_forecasts)
		icon = Hash.new(0)
		mtn_forecasts.map do |forecast|
			icon[forecast.weather.icon] += 1
		end
		icon.max_by { |k, v| v }.first
	end

	def self.snow_days(mtn_forecasts)
		mtn_forecasts.reduce(0) do |sum, forecast|
			sum + ((600..623).to_a.include?(forecast.weather.id) == true ? 1 : 0)
		end
	end

	def self.sunny_days(mtn_forecasts)
		mtn_forecasts.reduce(0) do |sum, forecast|
			sum + (forecast.weather.id == 800 ? 1 : 0)
		end
	end

		def self.temp_high(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.temp.day_temp
		end.max.round(2)
	end

	def self.temp_low(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.temp.day_temp
		end.min.round(2)
	end

	def self.temp_avg(mtn_forecasts)
		days = mtn_forecasts.count
		total_temps = mtn_forecasts.reduce(0) do |sum, forecast|
			sum + (forecast.temp.day_temp)
		end
		(total_temps / days).round(2)
	end

	def self.wind_high(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.speed
		end.max.round(2)
	end

	def self.wind_low(mtn_forecasts)
		mtn_forecasts.map do |forecast|
			forecast.speed
		end.min.round(2)
	end

	def self.wind_avg(mtn_forecasts)
		days = mtn_forecasts.count
		total_wind = mtn_forecasts.reduce(0) do |sum, forecast|
			sum + (forecast.speed)
		end
		(total_wind / days).round(2)
	end

	def self.wind_dir(mtn_forecasts)
		dir = Hash.new(0)
		mtn_forecasts.map do |forecast|
			dir[forecast.wind_dir] += 1
		end
		dir.max_by { |k, v| v }.first
	end
end
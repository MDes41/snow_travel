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
		x = mtn_forecasts.map do |forecast|
			forecast.weather.id
		end
		byebug
			[600..623].to_a.include?
	end
end
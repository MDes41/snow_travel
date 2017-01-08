class Forecast


	   #  {
    #   "dt": 1483815600,
    #   "temp": {
    #     "day": 259.36,
    #     "min": 253.56,
    #     "max": 259.36,
    #     "night": 257.29,
    #     "eve": 257.32,
    #     "morn": 259.36
    #   },
    #   "pressure": 738.85,
    #   "humidity": 39,
    #   "weather": [
    #     {
    #       "id": 600,
    #       "main": "Snow",
    #       "description": "light snow",
    #       "icon": "13d"
    #     }
    #   ],
    #   "speed": 1.66,
    #   "deg": 244,
    #   "clouds": 12,
    #   "snow": 0.12
    # }
	attr_reader  :day, :pressure, :humidity, :speed, :wind_dir, :clouds, :snow, :weather, :temp

	def initialize(raw_data)

		@day = raw_data[:dt]
		# @temp = create_temps(raw_data[:temp])
		@pressure = raw_data[:pressure]
		@humidity = raw_data[:humidity]
		# @weather = create_weather(raw_data[:weather].first)
		@speed = raw_data[:speed]
		@wind_dir = raw_data[:deg]
		@clouds = raw_data[:clouds]
		@snow = raw_data[:snow] == nil ? 0 : raw_data[:snow]
	end

	def self.get_forecasts(mountain)
		response = OpenWeather.get_mountain_info(mountain)
		JSON.parse(response.body, symbolize_names: true)[:list].map do |raw_data|
			Forecast.new(raw_data)
		end
	end

	# def create_temps(raw_temps)
	# 	Temp.new(raw_temps)
	# end

	# def create_weather(raw_weather)
	# 	Weather.new(raw_weather)
	# end
end
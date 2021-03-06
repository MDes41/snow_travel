class Forecast

	attr_reader  :day, :pressure, :humidity, :speed, :wind_dir, :clouds, :snow, :weather, :temp

	def initialize(raw_data)
		@day = convert_time(raw_data[:dt])
		@temp = create_temps(raw_data[:temp])
		@pressure = raw_data[:pressure]
		@humidity = raw_data[:humidity]
		@weather = create_weather(raw_data[:weather].first)
		@speed = raw_data[:speed]
		@wind_dir = wind_sym(raw_data[:deg])
		@clouds = raw_data[:clouds]
		@snow = raw_data[:snow] == nil ? 0 : raw_data[:snow]
	end

	def self.get_forecasts(mountain)
		response = OpenWeather.get_mountain_info(mountain)
		JSON.parse(response.body, symbolize_names: true)[:list].map do |raw_data|
			Forecast.new(raw_data)
		end
	end

	def create_temps(raw_temps)
		Temp.new(raw_temps)
	end

	def create_weather(raw_weather)
		Weather.new(raw_weather)
	end

	def wind_sym(dir)
		Direction.new.cardinal_direction(dir)
	end

	def convert_time(time)
		t = Time.at(time)
		t.strftime("%A, %b %d %Y")
	end

	def total_snow
		
	end
end
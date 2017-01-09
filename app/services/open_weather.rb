class OpenWeather
		attr_reader :response

	def initialize(mountain)
		@api_key = ENV['OPEN_WEATHER_API']
		@days_out = '16'
		@units = 'Imperial'
		@request = Faraday.new('http://api.openweathermap.org')
	end
	
	def self.get_mountain_info(mountain)
		new(mountain).mountain_info_response(mountain)
	end

	def mountain_info_response(mountain)
		@request.get do |req|
			req.url '/data/2.5/forecast/daily'
			req.params = { lat: mountain.lat, lon: mountain.lon} 
			req.params[:appid] = @api_key
			req.params[:cnt] = @days_out
			req.params[:units] = @units
		end
	end
end
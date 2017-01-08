class OpenWeather
		attr_reader :response

	def initialize(mountain)
		@api_key = ENV['OPEN_WEATHER_API']
		@days_out = '16'
		@request = Faraday.new('http://api.openweathermap.org')
		@response ||= mountain_info_response(mountain)
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
		end
	end
end
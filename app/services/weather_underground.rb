class WeatherUnderground

	def initialize(mountain)
		@api_key = ENV['WU_API_KEY']
		@request = Faraday.new('http://api.wunderground.com') do |faraday|
			faraday.request  :url_encoded             # form-encode POST params
  		faraday.response :logger                  # log requests to STDOUT
  		faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
  	end
	end
	
	def self.get_webcam_images(mountain, request)
		new(mountain).weather_underground_response(mountain, request)
	end

	def self.get_radar_image(mountain, request)
		new(mountain).weather_underground_response(mountain, request)
	end

	def self.get_satalite_image(mountain, request)
		new(mountain).weather_underground_response(mountain, request)
	end

	def self.get_satalite_path(mountain, request)
		response = get_satalite_image(mountain, request)
		"http://api.wunderground.com/" + "#{response.env.url.path}" + "?" + "#{response.env.url.query}"
	end

		def self.get_radar_path(mountain, request)
		response = get_radar_image(mountain, request)
		"http://api.wunderground.com/" + "#{response.env.url.path}" + "?" + "#{response.env.url.query}"
	end

	def weather_underground_response(mountain, request = {})
		url = get_url(mountain, request)
		params = get_params(request)
		@request.get do |req|
			req.url url
			req.params = params
		end
	end

	def get_url(mountain, request)
		return "/api/#{@api_key}/webcams/lang:EN/q/#{mountain.lat},#{mountain.lon}.json" if request[:feature] == 'webcam'
		return "/api/#{@api_key}/animatedsatellite/q/#{mountain.lat},#{mountain.lon}.gif" if request[:feature] == 'satellite'
		return "/api/#{@api_key}/animatedradar/q/#{mountain.lat},#{mountain.lon}.gif" if request[:feature] == 'radar'
	end

	def get_params(request)
		if request[:feature] == 'satellite' || request[:feature] == 'radar'
			{ 'radius' => '300', noclutter: 1, rainsnow: 1, newmaps: 1, smooth: 1, 'num' => '8', 'timelabel' => '1', 'timelabel.y' => 15, 'width' => 400, 'height' => 400}
		else
			{}
		end
	end

end
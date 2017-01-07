class MountainsController < ApplicationController

	def show
		mountain = Mountain.find(params[:id])
		# respnse = Faraday.get("https://api.bestbuy.com/v1/stores?apiKey=#{ENV['BB_API_KEY']}&format=json&show=longName,city,distance,phone,storeType&pageSize=15")
		response = Faraday.get("http://api.openweathermap.org/data/2.5/forecast/daily?lat=#{mountain.lat}&lon=#{mountain.lon}&cnt=16&APPID=#{ENV['OPEN_WEATHER_API']}")

		# conn = Faraday.new do |faraday|
		#   faraday.request  :url_encoded             # form-encode POST params
		#   faraday.response :logger                  # log requests to STDOUT
		#   faraday.adapter  Faraday.default_adapter  # make requests with Net::HTTP
		# end
		# byebug

		# conn.get do |req|                          
		#   req.url 'api.openweathermap.org/data/2.5/forecast/daily'
		#   req.params = {lat: mountain.lat, lon: mountain.lon, cnt: '16', appid: "ENV['OPEN_WEATHER_API']"}
		#  end

		render json: JSON.parse(response.body, symbolize_names: true)
	end

end
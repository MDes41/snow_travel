class MountainsController < ApplicationController

	def show
		mountain = Mountain.find(params[:id])
		response = Faraday.get("http://api.openweathermap.org/data/2.5/forecast/daily?lat=#{mountain.lat}&lon=#{mountain.lon}&cnt=16&APPID=#{ENV['OPEN_WEATHER_API']}")
		render json: JSON.parse(response.body, symbolize_names: true)
	end

end
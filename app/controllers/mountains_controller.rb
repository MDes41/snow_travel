class MountainsController < ApplicationController

	def index
		@category = params[:category]
		@forecasts = Mountain.all_forecasts
	end

	def show
		@mountain = Mountain.find_by(city: params[:id])
		@forecasts = Forecast.get_forecasts(@mountain)
		@satellite_path = WeatherUnderground.get_satalite_path(@mountain, feature: 'satellite')
		@radar_path = WeatherUnderground.get_radar_path(@mountain, feature: 'radar')
	end

end

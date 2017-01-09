class MountainsController < ApplicationController

	def show
		@mountain = Mountain.find(params[:id])
		@forecasts = Forecast.get_forecasts(@mountain)
		@satellite_path = WeatherUnderground.get_satalite_path(@mountain, feature: 'satellite')
		@radar_path = WeatherUnderground.get_radar_path(@mountain, feature: 'radar')
	end

end

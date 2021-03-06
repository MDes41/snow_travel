class MountainsController < ApplicationController
	before_action :authorized?
	
	def index
		@category = params[:category]
		@states = State.all
		@all_forecasts = Mountain.forecasts
	end

	def show
		@mountain = Mountain.find(params[:id])
		@forecasts = Forecast.get_forecasts(@mountain)
		@satellite_path = WeatherUnderground.get_satalite_path(@mountain, feature: 'satellite')
		@radar_path = WeatherUnderground.get_radar_path(@mountain, feature: 'radar')
		# @presenter = Presenter.new(id)
	end

end

# class Presenter
# 	def initialize(id)
# 		@mountain = Mountain.find(id)
# 	end

# 	def forecasts
# 		Forecast.get_forecasts(mountain)
# 	end
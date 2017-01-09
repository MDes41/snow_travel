class MountainsController < ApplicationController

	def show
		@mountain = Mountain.find(params[:id])
		@forecasts = Forecast.get_forecasts(@mountain)
	end

end
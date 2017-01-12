class StatesController < ApplicationController
	def show
		@category = params[:category]
		@state = State.find(params[:id])
		@forecasts = @state.mountains.forecasts
	end
end
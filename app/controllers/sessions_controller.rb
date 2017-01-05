class SessionsController < ApplicationController

	def show
	end

	def create
		render text: request.env["omniauth.auth"].inspect
	end
end
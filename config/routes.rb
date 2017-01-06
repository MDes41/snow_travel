Rails.application.routes.draw do
	root to: "home#index"
	get "/auth/google_oauth2", as: :google_login
	get "/auth/google_oauth2/callback", to: "sessions#create"
	delete "/logout", to: "sessions#destroy"
end

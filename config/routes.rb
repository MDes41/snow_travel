Rails.application.routes.draw do
	root to: "home#index"
	get "/auth/google_oauth2", to: "home#show"
	get "/auth/google_oauth2/callback", to: "home#index"
end

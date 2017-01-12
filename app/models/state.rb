class State < ApplicationRecord
	validates :name, presence: true
	validates :country, presence: true

	has_many :mountains

	def forecasts
		mountains.forecasts
	end
end

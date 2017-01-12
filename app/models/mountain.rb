class Mountain < ApplicationRecord
	validates :city, presence: true
	validates :state, presence: true
	validates :country, presence: true
	validates :lon, presence: true
	validates :lat, presence: true

	belongs_to :state


	def self.forecasts
		all.map do |mountain|
			[ mountain.city, Forecast.get_forecasts(mountain) ]
		end.to_h
	end


end

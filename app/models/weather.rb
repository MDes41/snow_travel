class Weather
	attr_reader :id, :main, :description, :icon

	def initialize(weather)
		@id = weather[:id]
		@main = weather[:main]
		@description = weather[:description]
		@icon = weather[:icon]
	end

end
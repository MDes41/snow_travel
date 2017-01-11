require 'rails_helper'

describe 'Days' do
	context 'days display' do

		before(:each) do
				@forecasts = []
				@raw_data = {}
				@raw_data[:snow] = 3
				@raw_data[:dt] = 1483988400
				@raw_data[:temp] =  {
											        "day": 58.06,
											        "min": 35.15,
											        "max": 58.06,
											        "night": 35.15,
											        "eve": 48.02,
											        "morn": 58.06
											      }
				@raw_data[:weather] = [
											        {
											          "id": 800,
											          "main": "Clear",
											          "description": "clear sky",
											          "icon": "01d"
											        }
											      ]
				@raw_data[:deg] = 257
		end

		it 'displays the total days accross forecast days' do
			@raw_data[:dt] = 1484161200
			@forecasts << Forecast.new(@raw_data) #1
			@raw_data[:dt] = 1484247600
			@forecasts << Forecast.new(@raw_data) #2
			@raw_data[:dt] = 1484334000
			@forecasts << Forecast.new(@raw_data) #3
			@raw_data[:dt] = 1484420400
			@forecasts << Forecast.new(@raw_data) #4
			@raw_data[:dt] = 1484506800
			@forecasts << Forecast.new(@raw_data) #5
			@raw_data[:dt] = 1484593200
			@forecasts << Forecast.new(@raw_data) #6
			@raw_data[:dt] = 1484679600
			@forecasts << Forecast.new(@raw_data) #7
			@raw_data[:dt] = 1484679600
			@forecasts << Forecast.new(@raw_data) #8
			@raw_data[:dt] = 1484852400
			@forecasts << Forecast.new(@raw_data) #9
			@raw_data[:dt] = 1484938800
			@forecasts << Forecast.new(@raw_data) #10
			@raw_data[:dt] = 1485025200
			@forecasts << Forecast.new(@raw_data) #11
			@raw_data[:dt] = 1485111600
			@forecasts << Forecast.new(@raw_data) #12
			@raw_data[:dt] = 1485198000
			@forecasts << Forecast.new(@raw_data) #13
			@raw_data[:dt] = 1485284400
			@forecasts << Forecast.new(@raw_data) #14
			@raw_data[:dt] = 1485370800
			@forecasts << Forecast.new(@raw_data) #15
			@raw_data[:dt] = 1484074800
			@forecasts << Forecast.new(@raw_data) #16

			result = Days.display_all(@forecasts)

			expect(result).to eq('Wednesday, Jan 11 2017 - Tuesday, Jan 10 2017')
		end
	end
end




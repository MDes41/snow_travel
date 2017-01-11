require 'rails_helper'

describe 'Total' do
	context 'Snow' do

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
				3.times do 
				@forecasts << Forecast.new(@raw_data)
				@raw_data[:snow] += 1
			end
  end
  
		it 'totals the snow from the forcast' do
			result = Total.total_snow(@forecasts)

			expect(result).to eq(12)
		end

		it "calculates the max snow" do 
			result = Total.max_snow(@forecasts)

			expect(result).to eq(5)
		end

		it "calculates the min snow" do 
			result = Total.min_snow(@forecasts)

			expect(result).to eq(3)
		end

		it "calculates the average snow rounded to nearest descimal" do
			result = Total.average_snow(@forecasts)

			expect(result).to eq(4.00)
		end
	end

	context 'Weather' do

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

	  it 'calculates the most weather days icon' do 
			@forecasts << Forecast.new(@raw_data)
			@forecasts << Forecast.new(@raw_data)
			@raw_data[:weather] = [{"icon": "02d"}]
			@forecasts << Forecast.new(@raw_data)
			@raw_data[:weather] = [{"icon": "04d"}]
			@forecasts << Forecast.new(@raw_data)
			@forecasts << Forecast.new(@raw_data)
			@forecasts << Forecast.new(@raw_data)
	  	icon = Total.mostly(@forecasts)

	  	expect(icon).to eq("04d")
	  end

	  it 'calculate the snow days icon' do
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id" => 800}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@forecasts << Forecast.new(@raw_data)
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id" => 615}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id" => 600}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id" => 620}]
	  	@forecasts << Forecast.new(@raw_data)

	  	snow_days = Total.snow_days(@forecasts)

	  	expect(snow_days).to eq(3)
	  end
	end
end

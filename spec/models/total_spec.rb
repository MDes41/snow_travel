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
	  	@raw_data[:weather] = [{"id": 800}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@forecasts << Forecast.new(@raw_data)
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id": 615}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id": 600}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id": 620}]
	  	@forecasts << Forecast.new(@raw_data)

	  	snow_days = Total.snow_days(@forecasts)

	  	expect(snow_days).to eq(3)
	  end

	  it 'calculate the sunny days icon' do
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id": 615}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:weather] = [{"id": 800}]
	  	@forecasts << Forecast.new(@raw_data)
	  	@forecasts << Forecast.new(@raw_data)

	  	snow_days = Total.sunny_days(@forecasts)

	  	expect(snow_days).to eq(3)
	  end
	end

	context 'Temperature' do

	before(:each) do
				@forecasts = []
				@raw_data = {}
				@raw_data[:snow] = 3
				@raw_data[:dt] = 1483988400
				@raw_data[:temp] =  {
											        "day": 25.00,
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

	  it 'calculates the temp high' do 
	  	@raw_data[:temp] =  { "day": 25.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 55.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 35.00 }
	  	@forecasts << Forecast.new(@raw_data)

	  	temp = Total.temp_high(@forecasts)

	  	expect(temp).to eq(55.00)
	  end

	   it 'calculates the temp low' do 
	  	@raw_data[:temp] =  { "day": 55.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 25.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 35.00 }
	  	@forecasts << Forecast.new(@raw_data)

	  	temp = Total.temp_low(@forecasts)

	  	expect(temp).to eq(25.00)
	  end

	  it 'calculates the avg temp' do 
	  	@raw_data[:temp] =  { "day": 35.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 45.00 }
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:temp] =  { "day": 55.00 }
	  	@forecasts << Forecast.new(@raw_data)

	  	temp = Total.temp_avg(@forecasts)

	  	expect(temp).to eq(45.00)
	  end
	end

	context 'Wind' do

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

	  it 'calculates the wind high' do 
	  	@raw_data[:speed] = 10.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 30.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 20.00
	  	@forecasts << Forecast.new(@raw_data)

	  	high = Total.wind_high(@forecasts)

	  	expect(high).to eq(30.00)
	  end

	  it 'calculates the wind low' do 
	  	@raw_data[:speed] = 30.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 10.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 20.00
	  	@forecasts << Forecast.new(@raw_data)

	  	low = Total.wind_low(@forecasts)

	  	expect(low).to eq(10.00)
	  end

	  it 'calculates the wind average' do 
	  	@raw_data[:speed] = 10.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 30.00
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:speed] = 20.00
	  	@forecasts << Forecast.new(@raw_data)

	  	avg = Total.wind_avg(@forecasts)

	  	expect(avg).to eq(20.00)
	  end

	  it 'calculates the wind dir' do 
	  	@raw_data[:deg] = 240
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:deg] = 90
	  	@forecasts << Forecast.new(@raw_data)
	  	@raw_data[:deg] = 100
	  	@forecasts << Forecast.new(@raw_data)

	  	dir = Total.wind_dir(@forecasts)

	  	expect(dir).to eq("E")
	  end
	end
end

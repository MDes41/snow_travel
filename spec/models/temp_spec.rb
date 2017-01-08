require 'rails_helper'

describe 'Temp' do
	context 'from forecasts' do
		it 'makes a temp model with correct attributes' do

			temp = {
			        "day": 259.36,
			        "min": 253.56,
			        "max": 259.36,
			        "night": 257.29,
			        "eve": 257.32,
			        "morn": 259.36
			       }

			temp = Temp.new(temp)

			expect(temp).to respond_to(:day_temp)
			expect(temp).to respond_to(:min_day_temp)
			expect(temp).to respond_to(:max_day_temp)
			expect(temp).to respond_to(:night_temp)
			expect(temp).to respond_to(:evening_temp)
			expect(temp).to respond_to(:morn_temp)
		end

		it 'converts kelvin to fahrenheit' do 

			kelvin = {
		        "day": 100,
		        "min": 180,
		        "max": 250,
		        "night": 280,
		        "eve": 500,
		        "morn": 600
		       }

			k = Temp.new(kelvin)
			
			day_temp = k.convert_kelvin_to_fahrenheit(k.day_temp)
			min_day_temp = k.convert_kelvin_to_fahrenheit(k.min_day_temp)
			max_day_temp = k.convert_kelvin_to_fahrenheit(k.max_day_temp)
			night_temp = k.convert_kelvin_to_fahrenheit(k.night_temp)
			evening_temp = k.convert_kelvin_to_fahrenheit(k.evening_temp)
			morn_temp = k.convert_kelvin_to_fahrenheit(k.morn_temp)

			expect(day_temp).to eq(-279.67)
			expect(min_day_temp).to eq(-135.67)
			expect(max_day_temp).to eq(-9.67)
			expect(night_temp).to eq(44.33)
			expect(evening_temp).to eq(440.33)
			expect(morn_temp).to eq(620.33)
		end
	end
end

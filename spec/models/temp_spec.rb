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
	end
end

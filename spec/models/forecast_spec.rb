require 'rails_helper'

describe 'Forcast' do
	context 'Api call' do
		it 'separates the forecast into a correct object' do
			colorado = State.create(name: "Colorado", country: 'USA')
			mountain = create :mountain, city: 'Vail', state_id: colorado.id, country: 'US', lon: '-106.374199', lat: '39.640259'
			
			forecasts = Forecast.get_forecasts(mountain)

			expect(forecasts).to be_kind_of(Array)
			expect(forecasts.count).to eq(16)

			forecasts.each do |forecast| 
				expect(forecast).to respond_to(:day)
				expect(forecast).to respond_to(:temp)
				expect(forecast.temp).to respond_to(:day_temp)
				expect(forecast).to respond_to(:pressure)
				expect(forecast).to respond_to(:humidity)
				expect(forecast).to respond_to(:weather)
				expect(forecast.weather).to respond_to(:main)
				expect(forecast).to respond_to(:speed)
				expect(forecast).to respond_to(:wind_dir)
				expect(forecast).to respond_to(:clouds)
				expect(forecast).to respond_to(:snow)
				expect(forecast.snow).to_not eq(nil) 
			end
		end
	end
end

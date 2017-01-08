require 'rails_helper'

describe 'Open Weather Api' do
	context 'Api call' do
		it 'returns the correct api based on mountain' do
			mountain = create :mountain, city: 'Vail', state: 'CO', country: 'US', lon: '-106.374199', lat: '39.640259'
			
			response = OpenWeather.get_mountain_info(mountain)

			jp = JSON.parse(response.body, symbolize_names: true)

			expect(jp).to be_kind_of(Hash)
			expect(jp).to have_key(:city)
			expect(jp[:city][:name]).to eq('Vail')
			expect(jp).to have_key(:list)
			expect(jp[:list].count).to eq(16)
			expect(jp[:list]).to be_kind_of(Array)
		end
	end
end

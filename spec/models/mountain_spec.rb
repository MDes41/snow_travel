require 'rails_helper'

RSpec.describe Mountain, type: :model do
  it "returns all mountains forecasts" do 
    colorado = State.create(name: "Colorado", country: 'USA')
  	Mountain.create(city: 'Vail', state_id: colorado.id, country: 'US', lon: '-106.3602599', lat: '39.6334609')
		Mountain.create(city: 'Breckenridge', state_id: colorado.id, country: 'US', lon: '-106.043211', lat: '39.501242')
		Mountain.create(city: 'Copper Mountain', state_id: colorado.id, country: 'US', lon: '-106.1561543', lat: '39.5009626')

  	forecasts = Mountain.forecasts

  	expect(forecasts).to be_kind_of(Hash)
  	expect(forecasts.count).to be(3)
  	expect(forecasts['Vail']).to be_kind_of(Array)
  	expect(forecasts['Vail'].count).to eq(16)
  	expect(forecasts['Vail'].first).to respond_to(:weather)
  	expect(forecasts['Copper Mountain']).to be_kind_of(Array)
  	expect(forecasts['Copper Mountain'].count).to eq(16)
  	expect(forecasts['Copper Mountain'].first).to respond_to(:snow)
  end
end

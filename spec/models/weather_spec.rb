require 'rails_helper'

describe 'Weather' do
	context 'from forecasts' do
		it 'makes a weather model with correct attributes' do
			weather = {
          "id": 600,
          "main": "Snow",
          "description": "light snow",
          "icon": "13d"
        }

      wo = Weather.new(weather)

      expect(wo).to respond_to(:id)
      expect(wo.id).to eq(600)
      expect(wo).to respond_to(:main)
      expect(wo).to respond_to(:description)
      expect(wo).to respond_to(:icon)
		end
	end
end


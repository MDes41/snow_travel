require 'rails_helper'

describe 'Direction' do
	context 'from forecasts' do
		it 'makes cardinal direction from the direction given' do

			dirS = Direction.new.cardinal_direction(180)
			dirN = Direction.new.cardinal_direction(2)
			dirNW = Direction.new.cardinal_direction(320)
			dirWSW = Direction.new.cardinal_direction(245)

			expect(dirS).to eq("S")
			expect(dirN).to eq("N")
			expect(dirNW).to eq("NW")
			expect(dirWSW).to eq("WSW")

		end
	end
end


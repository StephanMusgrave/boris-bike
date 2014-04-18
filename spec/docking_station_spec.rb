require 'docking_station'

describe DockingStation do

	it 'has no bikes' do
		expect(DockingStation.new).not_to have_bikes
	end

	it 'can be created with bikes' do
		station =DockingStation.new([:bike, :bike])
		expect(station).to have_bikes
	end

end
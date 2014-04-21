require 'van'
require_relative 'bike_container_spec'

describe Van do
	let (:van) 	{ Van.new }

	it_behaves_like BikeContainer

	it 'picks up broken bikes from a place' do
    place = double :place 
		expect(place).to receive(:release_broken_bikes).and_return([])
		van.pickup_broken_bikes_from(place)
	end

	it 'has broken bikes after picking them up' do
		place = double :place, release_broken_bikes: [:bike]
		van.pickup_broken_bikes_from(place)
		expect(van).to have_bikes
	end

	it 'has some more bikes after picking some up' do
		place   = double :place, release_broken_bikes: [:bike]
		place2 = double :place, release_broken_bikes: [:bike]
		van.pickup_broken_bikes_from(place)
		van.pickup_broken_bikes_from(place2)
		expect(van.bikes).to eq [:bike, :bike]
	end

	it 'bikes can be loaded into the van' do
		van.load(:bike)
		expect(van).to have_bikes
	end

	it 'drops broken bikes to a place' do
		place = double :place
		bike  = double :bike, broken?: true
		van   = Van.new([bike])
		expect(place).to receive(:dock)
		van.drop_broken_bikes_into(place)
	end

	it 'drops fixed bikes into a place' do
		place = double :place
		bike  = double :bike, broken?: false
		van   = Van.new([bike])
		expect(place).to receive(:dock)
		van.drop_bikes_into(place)
	end

end
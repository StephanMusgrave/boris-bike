require 'van'

describe Van do
	let (:van) 	{ Van.new }

	it 'has no bikes' do
		expect(van).not_to have_bikes
	end

	it 'picks up broken bikes from a place' do
		# place = double :place ** original, replaced with line below **
		place = double :place, release_broken_bikes: [:bike]
		expect(place).to receive(:release_broken_bikes)
		van.pickup_broken_bikes_from(place)
	end

	it 'has broken bikes after picking them up' do
		place = double :place, release_broken_bikes: [:bike]
		van.pickup_broken_bikes_from(place)
		expect(van).to have_bikes
	end

	it 'shows us the bikes it has' do
		expect(Van.new([:bike]).bikes).to eq [:bike]
	end

	it 'has some more bikes after picking some up' do
		place   = double :place, release_broken_bikes: [:bike]
		place2 = double :place, release_broken_bikes: [:bike]
		van.pickup_broken_bikes_from(place)
		van.pickup_broken_bikes_from(place2)
		expect(van.bikes).to eq [:bike, :bike]
	end

	it 'drops brokem'

end
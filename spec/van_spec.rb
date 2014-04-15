require "van"

describe Van do

  let(:bike) { Bike.new}
  let(:van) { Van.new(capacity: 5) }
  let(:station) { DockingStation.new(capacity: 20) }
  let(:garage) { Garage.new(capacity: 30) }

  
  it "should collect broken bikes from a station" do
    bike.break!
    station.dock(bike)
    van.collect_broken_bikes(station)
    expect(van.broken_bikes).to_not be 0
  end

end
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

  it "should deliver broken bikes to a garage" do
    bike.break!
    station.dock(bike)
    van.collect_broken_bikes(station)
    van.deliver_broken_bikes(garage)
    expect(van.broken_bikes.count).to eq(0)
    expect(garage.broken_bikes.count).to_not be 0
  end

it "should collect good bikes from a garage" do
    garage.good_bikes << bike
    van.collect_good_bikes(garage)
    expect(van.good_bikes.count).to_not eq(0)
    expect(garage.broken_bikes.count).to eq(0)
  end

  it "should deliver good bikes to a station" do
    garage.good_bikes << bike
    van.collect_good_bikes(garage)
    van.deliver_good_bikes(station)
    expect(van.good_bikes.count).to eq(0)
    expect(station.good_bikes.count).to_not be 0
  end



end
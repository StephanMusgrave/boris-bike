require "van"
require 'bike'
# require 'garage'
require 'docking_station'


describe Van do

  # let(:bike) { Bike.new}
  # let(:van) { Van.new(capacity: 5) }
  # let(:station) { DockingStation.new(capacity: 20) }
  # let(:garage) { Garage.new(capacity: 30) }

  
  it "should collect broken bikes from a station" do
    bike = Bike.new
    station = DockingStation.new
    van = Van.new
    bike.break!
    station.dock(bike)
    van.collect_broken_bikes(station, station.broken_bikes)
    expect(van.broken_bikes).to eq([bike])
  end

  it "should deliver broken bikes to a garage" do
    bike = Bike.new
    van = Van.new
    station = DockingStation.new
    garage = Garage.new
    bike.break!
    station.dock(bike)
    expect(station.broken_bikes.count).to eq 1
    van.collect_broken_bikes(station, station.broken_bikes)
    expect(station.broken_bikes.count).to eq 0
    # puts "--" * 20
    # puts station.bikes
    # puts "--" * 20
    expect(van.broken_bikes.count).to eq(1)
    van.deliver_broken_bikes(garage)
    # puts "--" * 20
    # puts station.broken_bikes
    expect(garage.broken_bikes.count).to eq 1
  end

  xit "should collect good bikes from a garage" do
    garage.good_bikes << bike
    van.collect_good_bikes(garage)
    expect(van.good_bikes.count).to_not eq(0)
    expect(garage.broken_bikes.count).to eq(0)
  end

  xit "should deliver good bikes to a station" do
    garage.good_bikes << bike
    van.collect_good_bikes(garage)
    van.deliver_good_bikes(station)
    expect(van.good_bikes.count).to eq(0)
    expect(station.good_bikes.count).to_not be 0
  end



end
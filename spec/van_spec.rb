require "van"

describe Van do

  let(:bike) { Bike.new}
  let(:van) { Van.new(capacity: 5) }
  let(:station) { DockingStation.new(capacity: 20) }
  let(:garage) { Garage.new(capacity: 30) }


  it "should collect a bike from a garage" do
    container = garage
    van.collect(bike,container)
    expect(bike).to be_true
  end
  
  it "should collect a broken bike from a station" do
    bike.break!
    container = station
    # if bike.broken {van.collect(bike,container)} end
    expect(bike).to be_true
  end

  it "should move a bike from a station to a garage" do
    from_container = station
    to_container = garage
    van.move(bike,from_container,to_container)
    expect(bike).to be_true
  end

end
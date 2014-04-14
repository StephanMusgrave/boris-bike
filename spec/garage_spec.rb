require "garage"

describe Garage do

  let(:bike) { Bike.new}
  let(:garage) { Garage.new(capacity: 30) }

  it "should mend a bike" do
    bike.break!
    garage.mend(bike)
    expect(bike).to_not be_broken
  end

end
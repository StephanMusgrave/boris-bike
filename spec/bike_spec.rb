require "bike"

# we're describing the functionality of the specific class, Bike
describe "boris-bike" do
  # this is a specific feature (behaviour)
  # that we expect to be present
  it "should not be broken after we create it" do
    bike = Bike.new
    expect(bike).not_to be_broken
  end






end
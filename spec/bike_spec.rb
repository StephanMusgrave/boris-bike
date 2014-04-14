require "bike"

# we're describing the functionality of the specific class, Bike
describe "bike" do
  
  let(:bike) { Bike.new}
  
  it "should not be broken after we create it" do
    expect(bike).not_to be_broken
  end

  it "should be able to break" do
    bike.break!
    expect(bike).to be_broken
  end

  it "should be able to get fixed" do
    bike.fix!
    expect(bike).not_to be_broken
  end







end
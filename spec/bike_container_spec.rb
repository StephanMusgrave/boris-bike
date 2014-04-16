require "bike_container"

class ContainerHolder; include BikeContainer; end

describe BikeContainer do 
    let(:bike) { Bike.new}
    let(:holder) {ContainerHolder.new}
    
    xit "should accept a bike" do
        # we expect the holder to have 0  bikes
        expect(holder.bike_count).to eq(0)
        # lets dock a bike into the holder
        holder.dock(bike)
        # now we expect the holder to have one bike
        expect(holder.bike_count).to eq(1)
    end

    xit "it should know if it has bikes" do
        expect(holder.has_bikes?).to be_false

        holder.dock(bike)
        # now we expect the holder to have one bike
    end
end
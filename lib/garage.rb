# load BikeContainer
require_relative 'bike_container'

class Garage

  include BikeContainer

  def initialize(options = {})
    @broken_bikes = []
    @good_bikes = [] 
    # self.capcity is calling the capacity=() method
    # defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    @capacity = options.fetch(:capacity, capacity)
  end
  
  def mend(bike)
    bike.fix!
  end

  def broken_bikes
    @broken_bikes
  end

  def good_bikes
    @good_bikes
  end

end
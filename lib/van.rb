# load BikeContainer
require_relative 'bike_container'

class Van

  include BikeContainer

  def initialize(options = {})
    # self.capacity is calling the capacity=() method
    # defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    @capacity = options.fetch(:capacity, capacity)
  end
  
  def collect(bike,container)
  end

  def move(bike,from_container,to_container) 
  end

end
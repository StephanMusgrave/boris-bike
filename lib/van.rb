require_relative 'bike_container'

class Van

  include BikeContainer


  def initialize(options = {})
    @good_bikes = []
    @broken_bikes = []
    # self.capacity is calling the capacity=() method
    # defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    @capacity = options.fetch(:capacity, capacity)
  end
  
  def collect_broken_bikes(container)
    @broken_bikes << container.bikes.select(&:broken?)  
  end

  def move(bike,from_container,to_container) 
  end

  def broken_bikes
    @broken_bikes
  end

end
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

  def deliver_broken_bikes(container)
    container.broken_bikes << bikes.select(&:broken?)
    @broken_bikes.clear
  end

  def broken_bikes
    @broken_bikes
  end

  def good_bikes
    @good_bikes
  end

end
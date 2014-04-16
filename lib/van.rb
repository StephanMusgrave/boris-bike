require_relative 'bike_container'

class Van

  include BikeContainer


  def initialize(options = {})
    @bikes = []
    # @good_bikes = []
    # @broken_bikes = []
    # # self.capacity is calling the capacity=() method
    # defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    self.capacity = options.fetch(:capacity, capacity)
  end

  # attr_reader :bikes
  
  def collect_broken_bikes(container, broken_bikes)
    broken_bikes.each { |bike| self.dock(bike) }
    broken_bikes.each {|bike| container.release_broken(bikes, self)}
  end

  def deliver_broken_bikes(container, broken_bikes)
    garage.dock(bike)
    bikes.delete(bike)
  end

  # def collect_good_bikes(container)
  #   @good_bikes << container.bikes.select(&:broken?)  
  # end

  # def deliver_good_bikes(container)
  #   container.good_bikes << bikes.select(&:broken?)
  #   @good_bikes.clear
  # end




end
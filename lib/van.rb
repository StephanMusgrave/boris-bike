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
    @capacity = options.fetch(:capacity, capacity)
  end

  attr_reader :bikes
  
  def collect_broken_bikes(container, broken_bikes)
    @bikes << broken_bikes
    # puts "--" * 20
    # puts broken_bikes.inspect
    # puts "--" * 20
    # puts "container bikes  --------------  #{container.bikes.inspect}"
    puts "--" * 20
    puts container.broken_bikes
    puts "--" * 20
    # container.bikes.reject!{|bike| broken_bikes.include?(bike)}
    # temp = (container.bikes - broken_bikes)
    # container.bikes = temp
    broken_bikes.each {|bike| container.bikes.release(bike)}
  end

  def deliver_broken_bikes(container)
    container.dock(self.broken_bikes)
    @bikes.delete(self.broken_bikes)
    
    # alternative syntax: 
    # container.broken_bikes << bikes.select { |bike| :broken?}
    
    # @broken_bikes.clear
  end

  def collect_good_bikes(container)
    @good_bikes << container.bikes.select(&:broken?)  
  end

def deliver_good_bikes(container)
    container.good_bikes << bikes.select(&:broken?)
    @good_bikes.clear
  end




end
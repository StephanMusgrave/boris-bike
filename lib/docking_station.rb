# load BikeContainer
require_relative 'bike_container'

class DockingStation
  # This gives us all the methods that used to be in this class
  # include BikeContainer

  def initialize(options = {})
  	@bikes = []
  	# @good_bikes = []
    # @broken_bikes = []
    # self.capcity is calling the capacity=() method
    # defined in BikeContainer
    # capacity (the second argument to fetch()) is calling
    # the capacity() method in BikeContainer
    @capacity = options.fetch(:capacity, capacity)
  end

  def bikes
  	@bikes
  end

	def dock(bike)
		@bikes << bike	  	
	end

	def release(bike)
		@bikes.delete(bike)
	end

end
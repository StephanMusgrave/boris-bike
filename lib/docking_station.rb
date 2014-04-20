class DockingStation
	def initialize(bikes=[])
		@bikes = bikes
	end

	def has_bikes? 
		@bikes.any?
	end

	def available_bikes
		@bikes.reject {|bike| bike.broken?}
	end

	def dock(bike)
		@bikes << bike
		nil
	end

	def release_bike
		@bikes.delete(available_bikes.pop)
	end

	def release_broken_bikes
		@bikes
	end

end
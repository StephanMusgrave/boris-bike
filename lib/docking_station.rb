class DockingStation
	def initialize(bikes=[])
		@bikes = bikes
	end

	def has_bikes? 
		@bikes.any?
	end

end
class Van

	attr_reader :bikes

	def initialize(bikes=[])
		@bikes = bikes
	end

	def has_bikes?
		@bikes.any?
	end

	def pickup_broken_bikes_from(place)
		@bikes.concat(place.release_broken_bikes)
	end

end
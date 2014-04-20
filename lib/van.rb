require_relative 'bike_container'
class Van
	include BikeContainer
	attr_reader :bikes

	def initialize(bikes=[])
		@bikes = bikes
	end

	def pickup_broken_bikes_from(place)
		@bikes.concat(place.release_broken_bikes)
	end

	def drop_broken_bikes_into(place)
		@bikes.select{|bike| bike.broken?}.each{|bike| place.dock(@bikes.delete(bike))}
	end

end
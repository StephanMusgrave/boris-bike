module BikeContainer
	BROKEN_BIKE_SELECTOR = ->(bike){bike.broken?}

	def release(bike)
    @bikes.delete(bike)
  end
 
	def dock(bike)
		@bikes << bike
		nil
	end

	def bikes
		@bikes
	end

	def release_bike
		release(available_bikes.pop)
	end

	def has_bikes? 
		@bikes.any?
	end

	def available_bikes
		@bikes.reject(&BROKEN_BIKE_SELECTOR)
	end

  def broken_bikes
    @bikes.select(&BROKEN_BIKE_SELECTOR)
  end

  def drop_into(place, bike_type)
		bike_type.each do |bike|
			place.dock(release(bike))
		end
	end

	def drop_broken_bikes_into(place)
		drop_into(place, broken_bikes)
	end

	def drop_bikes_into(place)
			drop_into(place, fixed_bikes)
	end

end
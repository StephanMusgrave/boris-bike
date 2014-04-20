module BikeContainer
	BROKEN_BIKE_SELECTOR = ->(bike){bike.broken?}

	def release(bike)
    @bikes.delete(bike)
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


end
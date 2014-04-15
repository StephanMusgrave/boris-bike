module BikeContainer

  DEFAULT_CAPACITY = 10

  def bikes
    @bikes.flatten
  end

  def capacity
    @capacity ||= DEFAULT_CAPACITY
  end

  def capacity=(value)
    @capacity ||= value
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
    # raise "Station is full" if full?
    @bikes << bike
  end

  def release(bike)
    bikes.delete(bike)
  end

  def full?
    @bikes.count == @capacity
  end

  def available_bikes
    bikes.reject { |bike| bike.broken?}
  end

  def has_bikes?
    bike_count >= 1
  end

  def broken_bikes
    @bikes.flatten.select { |bike| bike.broken? }
  end

end
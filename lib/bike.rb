class Bike
  def initialise
    @broken = false
  end

  def broken?
    @broken
  end

  def break!
    @broken = true
  end

end

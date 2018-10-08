class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
    @bike = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail 'Docking station full' if full?
    @bike << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    @bike.pop
  end

  private

  attr_reader :bikes

  def full?
    @bike.count >= capacity
  end

  def empty?
    @bike.empty?
  end
end
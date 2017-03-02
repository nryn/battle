class Player
  attr_reader :name, :hit_points
  DEFAULT_HIT_POINTS = 100
  def initialize(name)
    @name = name
    @hit_points = DEFAULT_HIT_POINTS
  end

  def reduce_hit_points
    @hit_points -= 10
  end
end

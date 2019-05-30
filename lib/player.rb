class Player
  attr_reader :name, :points
  def initialize(name, points=100)
    @name = name
    @points = points
  end

  def reduce
    @points -= 5 
  end
end
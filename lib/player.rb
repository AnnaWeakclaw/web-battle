class Player
  attr_reader :name
  attr_accessor :points
  def initialize(name, points=100)
    @name = name
    @points = points
  end
end
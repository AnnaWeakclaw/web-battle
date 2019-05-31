class Game
  attr_accessor :player1, :player2, :current_turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_turn = player1
  end
  
  def attack
    @player2.points -= 10
  end

  def switch_turn 
    @current_turn = other(@current_turn)
  end

  def other(player)
    player == player1 ? player2 : player1
  end
end
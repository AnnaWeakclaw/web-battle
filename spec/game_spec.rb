require 'game'

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player1)}
  let(:player2) { double(:player2)}
  
  it "can perform attack on player 1" do
    # is this correct?
    allow(player1).to receive(:points).and_return(100)
    expect(player1).to receive(:points=)
    game.attack(player2)
  end

  it "knows whose turn it is" do
    expect(game.current_turn).to eq(player1)
  end

  it "can switch turns" do
    expect(game.switch_turn).to eq(player2)
  end

  it "can perform attack on player 2" do
    allow(player2).to receive(:points).and_return(100)
    expect(player2).to receive(:points=)
    game.attack(player1)
  end
end
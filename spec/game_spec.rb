require 'game'

describe Game do
  let(:game) { Game.new(player1, player2) }
  let(:player1) { double(:player1)}
  let(:player2) { double(:player2)}
  it "can perform attack" do
    allow(player1).to receive(:points)
    expect(game).to respond_to(:attack) 
  end
end
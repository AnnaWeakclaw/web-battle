require 'player'

describe Player do
  let(:player) { Player.new("Bob") }
  it "has a name" do
    expect(player.name).to eq("Bob")
  end
 it "has points" do

 end
end
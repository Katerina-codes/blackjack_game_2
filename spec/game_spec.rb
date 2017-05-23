require 'game'

class DummyDealer

  def deal_initial_hand
    ["3D", "AS"]
  end

end

describe Game do
  let(:input) { StringIO.new }
  let(:output) { StringIO.new }
  let(:io) { CommandlineIO.new(output, input) }
  let(:dealer) { DummyDealer.new }
  let(:blackjack_score) { BlackjackScore.new }
  let(:player) { Player.new }
  let(:hand) { Hand.new }

  it "display the initial hand and value" do
    game = Game.new(io, dealer, blackjack_score, player, hand)

    game.deal_initial_hand

    expect(output.string).to include("3D", "AS", "Your hand value is: 14")
  end

  it "returns the initial player hand" do
    game = Game.new(io, dealer, blackjack_score, player, hand)

    expect(game.deal_initial_hand).to eq(["3D", "AS"])
  end



end

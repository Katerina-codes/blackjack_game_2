require 'game'

class DummyDealer

  def deal_initial_hand
    ["3D", "AS"]
  end

end

describe Game do

  it "display the initial hand and value" do
    input = StringIO.new
    output = StringIO.new
    io = CommandlineIO.new(output, input)
    dealer = DummyDealer.new
    blackjack_score = BlackjackScore.new
    player = Player.new
    hand = Hand.new
    game = Game.new(io, dealer, blackjack_score, player, hand)

    game.deal_initial_hand

    expect(output.string).to include("3D", "AS", "Your hand value is: 14")
  end
end

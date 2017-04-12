require 'hand'

describe Hand do

  it "returns draw if hand1 == hand2" do
    hand = Hand.new
    expect(hand.find_winner(0, 0)).to eq("It's a draw!")
  end

  it "returns winner if hand1 > hand2" do
    hand = Hand.new
    expect(hand.find_winner(1, 0)).to eq("Hand1 is the winner!")
  end

  it "returns winner if hand2 > hand1" do
    hand = Hand.new
    expect(hand.find_winner(0, 1)).to eq("Hand2 is the winner!")
  end

  it "returns false if sum of hand is < 21" do
    hand = Hand.new
    expect(hand.is_out?(0)).to eq(false)
  end

end

require 'winner'

describe Winner do

  it "returns draw if hand1 == hand2" do
    winner = Winner.new
    expect(winner.find_winner(0, 0)).to eq("It's a draw!")
  end

  it "returns winner if hand1 > hand2" do
    winner = Winner.new
    expect(winner.find_winner(1, 0)).to eq("Hand1 is the winner!")
  end

  it "returns winner if hand2 > hand1" do
    winner = Winner.new
    expect(winner.find_winner(0, 1)).to eq("Hand2 is the winner!")
  end

end

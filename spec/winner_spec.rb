require 'winner'

describe Winner do

  it "returns winner if hand1 > hand2" do
    winner = Winner.new
    expect(winner.find_winner(0, 0)).to eq("It's a draw!")
  end

end

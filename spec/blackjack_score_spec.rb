require 'blackjack_score'

describe BlackjackScore do

  it "returns 0 if hand is A" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["A"])).to eq("Enter a valid card")
  end

  it "returns 0 if hand is C" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["C"])).to eq("Enter a valid card")
  end

  it "returns 1 if hand is AC" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["AC"])).to eq(1)
  end

  it "returns 1 if hand is AS" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["AS"])).to eq(1)
  end

  it "returns 2 if hand is 2C" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["2C"])).to eq(2)
  end

  it "returns 3 if hand is 3D" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["3D"])).to eq(3)
  end

  it "returns 10 if hand is 10H" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["10H"])).to eq(10)
  end

  it "returns 10 if hand is JD" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["JD"])).to eq(10)
  end

  it "returns 10 if hand is QH" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["QH"])).to eq(10)
  end

  it "returns 10 if hand is KD" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["KD"])).to eq(10)
  end

  it "returns 5 is hand is ['2H', '3D']" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_hand_value(["2H", "3D"])).to eq(5)
  end


end

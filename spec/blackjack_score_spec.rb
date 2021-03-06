require 'blackjack_score'

describe BlackjackScore do
  subject(:blackjack_score) { described_class.new }

  it "returns -1 if hand is A" do
    expect(blackjack_score.get_hand_value(["A"])).to eq(-1)
  end

  it "returns -1 if hand is C" do
    expect(blackjack_score.get_hand_value(["C"])).to eq(-1)
  end

  it "returns 11 if hand is AC" do
    expect(blackjack_score.get_hand_value(["AC"])).to eq(11)
  end

  it "returns 11 if hand is AS" do
    expect(blackjack_score.get_hand_value(["AS"])).to eq(11)
  end

  it "returns 2 if hand is 2C" do
    expect(blackjack_score.get_hand_value(["2C"])).to eq(2)
  end

  it "returns 3 if hand is 3D" do
    expect(blackjack_score.get_hand_value(["3D"])).to eq(3)
  end

  it "returns 10 if hand is 10H" do
    expect(blackjack_score.get_hand_value(["10H"])).to eq(10)
  end

  it "returns 10 if hand is JD" do
    expect(blackjack_score.get_hand_value(["JD"])).to eq(10)
  end

  it "returns 10 if hand is QH" do
    expect(blackjack_score.get_hand_value(["QH"])).to eq(10)
  end

  it "returns 10 if hand is KD" do
    expect(blackjack_score.get_hand_value(["KD"])).to eq(10)
  end

  it "returns 5 is hand is ['2H', '3D']" do
    expect(blackjack_score.get_hand_value(["2H", "3D"])).to eq(5)
  end

  it "returns 5 is hand is ['2H', '3D']" do
    expect(blackjack_score.get_hand_value(["2H", "3D"])).to eq(5)
  end

  it "returns 14 if hand is ['4C', 'QS']" do
    expect(blackjack_score.get_hand_value(['4C', 'QS'])).to eq(14)
  end

  it "returns 21 if hand is ['AS', KD]" do
    expect(blackjack_score.get_hand_value(['AS', 'KD'])).to eq(21)
  end

  it "returns 13 if hand is ['2D','AS', 'KD']" do
    expect(blackjack_score.get_hand_value(['2D','AS', 'KD'])).to eq(13)
  end

  it "returns 12 if hand is [AS, AH, 10D]" do
    expect(blackjack_score.get_hand_value(['AS', 'AH,', '10D'])).to eq(12)
  end

  it "returns 14 if hand is [AS, AH, AD, JD]" do
    expect(blackjack_score.get_hand_value(['AS', 'AH', 'AD', 'JD'])).to eq(13)
  end

end

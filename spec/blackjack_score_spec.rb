require 'blackjack_score'

describe BlackjackScore do

  it "returns 0 if hand is A" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("A")).to eq("Enter a valid card")
  end

  it "returns 0 if hand is C" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("C")).to eq("Enter a valid card")
  end

  it "returns 1 if hand is AC" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("AC")).to eq(1)
  end

  it "returns 1 if hand is AS" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("AS")).to eq(1)
  end

  it "returns 2 if hand is 2C" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("2C")).to eq(2)
  end

  it "returns 3 if hand is 3D" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("3D")).to eq(3)
  end

  it "returns 10 if hand is 10H" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("10H")).to eq(10)
  end

  it "returns 10 if hand is JD" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("JD")).to eq(10)
  end

  it "returns 10 if hand is QH" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("QH")).to eq(10)
  end

  it "returns 10 if hand is KD" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("KD")).to eq(10)
  end


end

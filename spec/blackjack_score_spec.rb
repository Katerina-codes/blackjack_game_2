require 'blackjack_score'

describe BlackjackScore do

  it "returns 0 if card is A" do
    blackjack_score = BlackjackScore.new
    expect(blackjack_score.get_card_values("A")).to eq("Enter a valid card")
  end
  
end

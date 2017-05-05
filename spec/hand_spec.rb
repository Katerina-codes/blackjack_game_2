require 'hand'

# subject(:hand) { described_class.new }

describe Hand do

	# it "returns draw if hand1 == hand2" do
	# 	hand = Hand.new
	# 	expect(hand.find_winner(0, 0)).to eq("It's a draw!")
	# end

	it "returns winner if hand1 > hand2 and hands are < 21" do
		hand = Hand.new
		expect(hand.find_winner(2, 1)).to eq("Player one is the winner!")
	end

	it "returns winner if hand1 > hand2 but hand1 > 21" do
	  hand = Hand.new
		expect(hand.find_winner(22, 1)).to eq("Player two is the winner!")
	end

	it "returns winner if hand2 > hand1 and hands are < 21" do
	  hand = Hand.new
 	  expect(hand.find_winner(1, 2)).to eq("Player two is the winner!")
  end

	it "returns winner if hand2 > hand1 but hand2 > 21" do
		hand = Hand.new
	  expect(hand.find_winner(1, 22)).to eq("Player one is the winner!")
	end

	it "returns hands are bust if both hands > 21" do
		hand = Hand.new
		expect(hand.find_winner(22, 23)).to eq("Both hands are bust!")
	end

   it "returns winner if hand1 == 21" do
		 hand = Hand.new
		 expect(hand.find_winner(21, 0)).to eq("Player one is the winner!")
	 end

	 it "returns winner if hand2 == 21" do
		 hand = Hand.new
 		expect(hand.find_winner(0, 21)).to eq("Player two is the winner!")
 	 end


# 	it "returns winner if hand2 > hand1" do
# 		hand = Hand.new
# 		expect(hand.find_winner(1, 0)).to eq("Player two is the winner!")
# 	end
#
# 	it "returns false if sum of hand is 0" do
# 		hand = Hand.new
# 		expect(hand.is_out?(0)).to eq(false)
# 	end
#
# 	it "returns true if sum of hand is > 21" do
# 		hand = Hand.new
# 		expect(hand.is_out?(22)).to eq(true)
# 	end

end

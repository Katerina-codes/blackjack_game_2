require 'hand'

describe Hand do

	subject(:hand) { described_class.new }

	it "returns draw if hand1 == hand2" do
		expect(subject.find_winner(0, 0)).to eq("It's a draw!")
	end

	it "returns winner if hand1 > hand2 and hands are < 21" do
		expect(subject.find_winner(2, 1)).to eq("Player one is the winner!")
	end

	it "returns winner if hand1 > hand2 but hand1 > 21" do
		expect(subject.find_winner(22, 1)).to eq("Player two is the winner!")
	end

	it "returns winner if hand2 > hand1 and hands are < 21" do
 	  expect(subject.find_winner(1, 2)).to eq("Player two is the winner!")
  end

	it "returns winner if hand2 > hand1 but hand2 > 21" do
	  expect(subject.find_winner(1, 22)).to eq("Player one is the winner!")
	end

	it "returns hands are bust if both hands > 21" do
		expect(subject.find_winner(22, 23)).to eq("Both hands are bust!")
	end

   it "returns winner if hand1 == 21" do
		 expect(subject.find_winner(21, 0)).to eq("Player one is the winner!")
	 end

	 it "returns winner if hand2 == 21" do
 		expect(subject.find_winner(0, 21)).to eq("Player two is the winner!")
 	 end

end

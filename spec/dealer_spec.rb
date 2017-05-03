require 'dealer'
require 'dummy'

describe Dealer do

	it "Returns 1 player" do
		io = Dummy.new
  	dealer = Dealer.new(io)
		expect(dealer.determine_number_of_players).to eq(1)
	end

	it "returns the current hand plus new card" do
		dealer = Dealer.new
		expect(dealer.hand_plus_new_card(["AH", "2D"], ["3C"])).to eq(["AH", "2D", "3C"])
	end

	it "returns the current hand plus new card 4D" do
		dealer = Dealer.new
		expect(dealer.hand_plus_new_card(["AH", "2D"], ["4D"])).to eq(["AH", "2D", "4D"])
	end

end

require 'dealer'
require 'dummy'

describe Dealer do

	it "Returns 1 player" do
		io = Dummy.new
  	dealer = Dealer.new(io)
		expect(dealer.determine_number_of_players).to eq(1)
	end

end

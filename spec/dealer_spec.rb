require 'dealer'

describe Dealer do

	it "ask if user wants to hit or stop" do
		output = StringIO.new
		dealer = Dealer.new(output)
		dealer.ask_hit_or_stop
		expect(output.string).to eq("Do you want to hit or stop?\n")
	end

	it "gets input from the user" do
		output = StringIO.new
		input = StringIO.new("hit")
		dealer = Dealer.new(output, input)
		expect(dealer.get_hit_or_stop).to eq("hit")
	end

	it "returns score if user enters 'stop'" do
		dealer = Dealer.new
		expect(dealer.return_score(10)).to eq("Game over and your score is: 10")
	end

	# it "deals another card if user enters 'hit'" do
	# 	dealer = Dealer.new
	# 	expect(dealer.give_new_card).to include("C", "D", "H", "S")
	# end

end

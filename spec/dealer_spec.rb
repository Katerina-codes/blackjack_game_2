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

end

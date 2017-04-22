require 'dealer'

describe Dealer do

	it "ask if user wants to hit or stop" do
		output = StringIO.new
		dealer = Dealer.new(output)
		dealer.hit_or_stop
		expect(output.string).to eq("Do you want to hit or stop?\n")
	end
end

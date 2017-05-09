require 'player'

describe Player do

 # it "returns two cards for initial hand" do
 #   output = StringIO.new("[1D, 1D]")
 #   player_one = PlayerOne.new
 #   player_one.get_initial_hand
 #   expect(output.string).to eq("[1D, 1D]")
 # end

 it "stores next user move" do
   player = Player.new
   expect(player.next_move).to satisfy {|value_returned| value_returned == "hit" || value_returned == "stop" }
 end

end

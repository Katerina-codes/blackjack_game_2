require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "returns a value when it's passed a list of one value" do
    computer_player = Computer.new(["hit"])
    expect(computer_player.play_move).to eq("hit")
  end

  it "defaults to a set of moves when not passed any moves" do
    expect(subject.play_move).to satisfy { |value_returned| value_returned == "hit" || value_returned == "stop" }
  end

end

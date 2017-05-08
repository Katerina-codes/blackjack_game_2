require 'computer'

describe Computer do

  it "returns hit" do
    computer = Computer.new
    expect(computer.play_move(["Hit"])).to eq("hit")
  end

end

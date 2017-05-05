require 'computer'

describe Computer do

  it "returns hit" do
  computer = Computer.new
  expect(computer.play_move).to eq("hit")
  end
end

require 'computer'

describe Computer do

  subject(:computer) { described_class.new }

  it "returns hit" do
    expect(subject.play_move(["Hit"])).to eq("hit")
  end

  it "returns stop" do
    expect(subject.play_move(["stop", "hit"])).to eq("stop")
  end

end

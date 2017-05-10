require 'commandlineio'

describe CommandlineIO do

  subject(:commandlineio) { described_class.new }

  it "ask if user wants to hit or stop" do
    output = StringIO.new
    commandlineio = CommandlineIO.new(output)
    commandlineio.ask_hit_or_stop
    expect(output.string).to eq("Do you want to hit or stop?\n")
  end

  it "gets input from the user" do
    output = StringIO.new
    input = StringIO.new("hit")
    commandlineio = CommandlineIO.new(output, input)
    expect(commandlineio.get_hit_or_stop).to eq("hit")
  end

  it "returns score if user enters 'stop'" do
    output = StringIO.new
    commandlineio = CommandlineIO.new(output)
    commandlineio.return_score(10)
    expect(output.string).to eq("Game over and your score is: 10\n")
  end

  it "displays '1, 2 player or computer?'" do
    output = StringIO.new
    commandlineio = CommandlineIO.new(output)
    commandlineio.ask_how_many_players
    expect(output.string).to eq("1 player, 2 player or play against computer?\n")
  end

  it "displays an error message if user enters 0" do
    output = StringIO.new
    input = StringIO.new("0\n1")
    commandlineio = CommandlineIO.new(output, input)
    commandlineio.get_num_of_players
    expect(output.string).to eq("Please enter '1', '2' or '3'\n")
  end

  it "gets 1 from the user" do
    output = StringIO.new
    input = StringIO.new("1")
    commandlineio = CommandlineIO.new(output, input)
    expect(commandlineio.get_num_of_players).to eq(1)
  end

  it "gets 2 from the user" do
    output = StringIO.new
    input = StringIO.new("2")
    commandlineio = CommandlineIO.new(output, input)
    expect(commandlineio.get_num_of_players).to eq(2)
  end

  it "displays the current hand plus new card" do
    output = StringIO.new
  	commandlineio = CommandlineIO.new(output)
    commandlineio.display_hand_plus_new_card('["AH", "2D", "3C"]')
  	expect(output.string).to eq('["AH", "2D", "3C"]')
  end

end

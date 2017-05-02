require_relative "blackjack_score"

class CommandlineIO

  def initialize(output = $stdout, input = $stdin)
    @output = output
    @input = input
  end

  def ask_how_many_players
    @output.puts "1 or 2 player?"
  end

  def get_num_of_players
    num_of_players = @input.gets.chomp.to_i
    until num_of_players == 1 || num_of_players == 2
      @output.puts "Please enter 1 or 2"
      num_of_players = @input.gets.chomp.to_i
    end
    num_of_players
  end

  def display_initial_hand(initial_hand)
		@output.print initial_hand
	end

  def ask_hit_or_stop
    @output.puts "Do you want to hit or stop?"
  end

  def get_hit_or_stop
    user_input = @input.gets.chomp.downcase
    until user_input == "hit" || user_input == "stop"
      puts "Please enter hit or stop: "
      user_input = @input.gets.chomp.downcase
    end
    user_input
  end

  def get_hand_value(hand)
    @output.puts "Your hand value is: " + BlackjackScore.new.get_hand_value(hand).to_s
  end

  def return_score(hand_value)
    @output.puts "Game over and your score is: " + hand_value.to_s
  end

end

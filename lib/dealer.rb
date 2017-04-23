require_relative 'blackjack_score'
class Dealer

	def initialize(output = $stdout, input = $stdin)
		@output = output
		@input = input
	end

	def ask_hit_or_stop
		@output.puts "Do you want to hit or stop?"
	end

	def get_hit_or_stop
	user_input = @input.gets.chomp.downcase
      until user_input == "hit" || user_input == "stop"
        puts "Please enter hit or stop: "
  	    get_hit_or_stop
      end

  end

  def determine_next_move
	user_input = get_hit_or_stop
	  if user_input == "hit"
	  	give_new_card
	  else
		  return_score
	  end
  end

  def give_new_card
	  card_values = ("1".."10").to_a + ["J", "Q", "K", "A"]
	  card_type = ["C", "D", "H", "S"]
	  card_values.sample + card_type.sample
  end

  def return_score
	  hand = ["1D"]
	  hand_score = BlackjackScore.new.get_hand_value(hand)
	  "Game over and your score is: " + hand_score.to_s
  end

end

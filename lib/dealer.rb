require_relative 'blackjack_score'
require_relative 'hand'

class Dealer

	def initialize(output = $stdout, input = $stdin)
		@output = output
		@input = input
	end

	def ask_how_many_players
		@output.puts "1 or 2 player?"
	end

	def get_num_of_players
		num_of_players = @input.gets.chomp.to_i
		if num_of_players == 1 || num_of_players == 2
			num_of_players
		else
		"Please enter 1 or 2"
		end
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

	def give_new_card
		card_values = ("1".."10").to_a + ["J", "Q", "K", "A"]
		card_type = ["C", "D", "H", "S"]
		new_card = [card_values.sample + card_type.sample]
		new_card
	end

	def return_score(hand_value)
		@output.puts "Game over and your score is: " + hand_value.to_s
	end

	def dealer_game_flow
		ask_how_many_players
		card1 = give_new_card
		card2 = give_new_card
		hand = card1 + card2
		puts hand
		hand_value = BlackjackScore.new.get_hand_value(hand)

		until Hand.new.is_out?(hand_value)
			puts "Your hand value is: " + hand_value.to_s
			ask_hit_or_stop
			if get_hit_or_stop == "stop" || hand_value > 21
				return return_score(hand_value)
			else
				p hand += give_new_card
				hand_value = BlackjackScore.new.get_hand_value(hand)
			end
		end
		return_score(hand_value)
	end

end

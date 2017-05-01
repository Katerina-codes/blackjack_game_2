require_relative 'blackjack_score'
require_relative 'hand'
require_relative 'commandlineio'

class Dealer

	def initialize(io = CommandlineIO.new)
		@io = io
	end

	def give_new_card
		card_values = ("1".."10").to_a + ["J", "Q", "K", "A"]
		card_type = ["C", "D", "H", "S"]
		new_card = [card_values.sample + card_type.sample]
	end

	def determine_number_of_players
		@io.ask_how_many_players
		@io.get_num_of_players
	end

	def deal_initial_hand
		card1 = give_new_card
		card2 = give_new_card
		hand = card1 + card2
  end

  def get_hand_value(hand)
		"Your hand value is: " + BlackjackScore.new.get_hand_value(hand).to_s
  end

	def get_final_hand_value(hand, hand_value)
		until Hand.new.is_out?(hand_value)
			p get_hand_value(hand)
			CommandlineIO.new.ask_hit_or_stop
			if CommandlineIO.new.get_hit_or_stop == "stop" || hand_value.to_i > 21
				return hand_value
			else
				p hand += give_new_card
				hand_value = BlackjackScore.new.get_hand_value(hand)
			end
		end
		hand_value
	end

	def dealer_game_flow
		CommandlineIO.new.ask_how_many_players
		if CommandlineIO.new.get_num_of_players == 1
			p player_one_hand = Player.new.get_initial_hand
			player_one_hand_value = get_hand_value(player_one_hand)
      player_one_final_hand = get_final_hand_value(player_one_hand, player_one_hand_value)
			CommandlineIO.new.return_score(player_one_final_hand)
    else
			p player_one_hand = Player.new.get_initial_hand
			p player_two_hand = Player.new.get_initial_hand
			player_one_hand_value = get_hand_value(player_one_hand)
			player_one_final_hand = get_final_hand_value(player_one_hand, player_one_hand_value)
			return_score(player_one_final_hand)

			player_two_hand_value = get_hand_value(player_two_hand)
			player_two_final_hand = get_final_hand_value(player_two_hand, player_two_hand_value)
			CommandlineIO.new.return_score(player_two_final_hand)
		end
	end

end

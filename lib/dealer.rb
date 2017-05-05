require_relative 'blackjack_score'
require_relative 'hand'
require_relative 'commandlineio'

class Dealer

	def initialize(io = CommandlineIO.new)
		@io = io
	end

	def give_new_card
		card_values = ("2".."10").to_a + ["J", "Q", "K", "A"]
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

  def get_final_hand_value(hand)
		hand_value = BlackjackScore.new.get_hand_value(hand)

		until Hand.new.is_out?(hand_value)
		  @io.ask_hit_or_stop
			if @io.get_hit_or_stop == "stop" || hand_value.to_i >= 21
				return hand_value.to_i
			else
				hand_with_new_card = hand += give_new_card
				@io.display_hand_plus_new_card(hand_with_new_card)
				hand_value = BlackjackScore.new.get_hand_value(hand_with_new_card)
				@io.display_hand_value(hand_value)
			end
		end
		hand_value
  end

	# def dealer_game_flow
	# 	@io.ask_how_many_players
	# 	if @io.get_num_of_players == 1
	# 		player_one_hand = Player.new.get_initial_hand
	# 		@io.display_initial_hand(player_one_hand)
	# 		player_one_hand_value = @io.get_hand_value(player_one_hand)
	# 		@io.display_hand_value(player_one_hand_value)
  #     player_one_final_hand = get_final_hand_value(player_one_hand, player_one_hand_value)
	# 		@io.return_score(player_one_final_hand)
  #   else
	# 		player_one_hand = Player.new.get_initial_hand
	# 		@io.display_initial_hand(player_one_hand)
	# 		player_one_hand_value = @io.get_hand_value(player_one_hand)
	# 		@io.display_hand_value(player_one_hand_value)
	#
	# 		player_two_hand = Player.new.get_initial_hand
	# 		@io.display_initial_hand(player_two_hand)
	# 		player_two_hand_value = @io.get_hand_value(player_two_hand)
	# 		@io.display_hand_value(player_two_hand_value)
	#
	# 		player_two_hand_value = @io.get_hand_value(player_two_hand)
	# 		player_one_final_hand = get_final_hand_value(player_one_hand, player_one_hand_value)
	# 		@io.return_score(player_one_final_hand)
	#
	# 		player_two_hand_value = @io.get_hand_value(player_two_hand)
	# 		player_two_final_hand = get_final_hand_value(player_two_hand, player_two_hand_value)
	# 		@io.return_score(player_two_final_hand)
	# 		# p Hand.new.find_winner(player_one_final_hand, player_two_final_hand)
	# 	end
	# end

end

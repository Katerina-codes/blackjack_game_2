require_relative "commandlineio"
require_relative "dealer"
require_relative "blackjack_score"

class Game

  def initial_hand
    @io = CommandlineIO.new
    @dealer = Dealer.new
    @blackjack_score = BlackjackScore.new

    player_hand = @dealer.deal_initial_hand
    @io.display_initial_hand(player_hand)
    hand_value = @blackjack_score.get_hand_value(player_hand)
    @io.display_hand_value(hand_value)
    player_hand
  end

  def hand_played_until_end(player_hand)
    @io = CommandlineIO.new
    @dealer = Dealer.new

    hand_played_until_end = @dealer.get_final_hand_value(player_hand)  # should hand or score be getting this?
    @io.return_score(hand_played_until_end)
  end

  def game_flow
    @io = CommandlineIO.new

    @io.ask_how_many_players
    if @io.get_num_of_players == 1
      player_hand = initial_hand
      hand_played_until_end(player_hand)
    end
  end
  # def game_flow
  #   @io = CommandlineIO.new
  #   @dealer = Dealer.new
  #
  # 	@io.ask_how_many_players
  # 	if @io.get_num_of_players == 1
  # 		player_one_hand = Player.new.get_initial_hand
  # 		@io.display_initial_hand(player_one_hand)
  # 		player_one_hand_value = @io.get_hand_value(player_one_hand)
  # 		@io.display_hand_value(player_one_hand_value)
  #     player_one_final_hand = @dealer.get_final_hand_value(player_one_hand, player_one_hand_value)
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
  # 		player_one_final_hand = @dealer.get_final_hand_value(player_one_hand, player_one_hand_value)
  # 		@io.return_score(player_one_final_hand)
  #
  # 		player_two_hand_value = @io.get_hand_value(player_two_hand)
  # 		player_two_final_hand = @dealer.get_final_hand_value(player_two_hand, player_two_hand_value)
  # 		@io.return_score(player_two_final_hand)
  # 		# p Hand.new.find_winner(player_one_final_hand, player_two_final_hand)
  # 	end
  # end

end

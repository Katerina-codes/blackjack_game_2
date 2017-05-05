require_relative "commandlineio"
require_relative "dealer"
require_relative "blackjack_score"
require_relative "hand"

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
    hand_played_until_end
  end

  def game_flow
    @io = CommandlineIO.new
    @hand = Hand.new

    @io.ask_how_many_players
    if @io.get_num_of_players == 1
      player_hand = initial_hand
      hand_played_until_end(player_hand)
    else
      player_one_hand = initial_hand
      player_two_hand = initial_hand
      player_one_hand_result = hand_played_until_end(player_one_hand)
      print "Player two: "
      player_two_hand_result = hand_played_until_end(player_two_hand)
      p @hand.find_winner(player_one_hand_result, player_two_hand_result)
    end
  end

end

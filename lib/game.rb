require_relative "commandlineio"
require_relative "dealer"
require_relative "blackjack_score"
require_relative "hand"
require_relative "computer"

class Game

  def initialize(io, dealer, blackjack_score, player, hand)
    @io = io
    @dealer = dealer
    @blackjack_score = blackjack_score
    @player = player
    @hand = hand
  end

  def initial_hand
    player_hand = @dealer.deal_initial_hand
    @io.display_initial_hand(player_hand)
    hand_value = @blackjack_score.get_hand_value(player_hand)
    @io.display_hand_value(hand_value)
    player_hand
  end

  def hand_played_until_end(player_hand, player_type)
    hand_played_until_end = @dealer.get_final_hand_value(player_hand, player_type)  # should hand or score be getting this?
    @io.return_score(hand_played_until_end)
    hand_played_until_end
  end

  def game_flow
    @io.ask_how_many_players
    players = @io.get_num_of_players

    if players == 1
      player_hand = initial_hand
      player_type = Player.new
      hand_played_until_end(player_hand, player_type)
    elsif players == 2
      player_one_hand = initial_hand
      player_two_hand = initial_hand
      player_type = Player.new
      player_one_hand_result = hand_played_until_end(player_one_hand, player_type)
      print "Player two: "
      player_two_hand_result = hand_played_until_end(player_two_hand, player_type)
      p @hand.find_winner(player_one_hand_result, player_two_hand_result)
    else
      player_one_hand = initial_hand
      computer_player_hand = initial_hand
      player_type = Player.new
      player_one_hand_result = hand_played_until_end(player_one_hand, player_type)
      print "Player two: "
      player_type = Computer.new
      player_two_hand_result = hand_played_until_end(computer_player_hand, player_type)
      p @hand.find_winner(player_one_hand_result, player_two_hand_result)
    end
  end

end

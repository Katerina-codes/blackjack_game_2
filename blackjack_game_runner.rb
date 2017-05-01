require_relative 'lib/blackjack_score'
require_relative 'lib/dealer'
require_relative 'lib/hand'
require_relative 'lib/player'


x = Dealer.new
x.dealer_game_flow
# p player_one = Player.new.get_initial_hand
# p player_two = Player.new.get_initial_hand
# player_one_hand = player_one
# player_one_hand_value = x.get_hand_value(player_one_hand)
# x.dealer_game_flow(player_one_hand, player_one_hand_value)
#
# player_two_hand = player_two
# player_two_hand_value = x.get_hand_value(player_two_hand)
# x.dealer_game_flow(player_two_hand, player_two_hand_value)

# Hand.new.find_winner(player_one_hand_value, player_two_hand_value)

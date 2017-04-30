require_relative 'lib/blackjack_score'
require_relative 'lib/dealer'
require_relative 'lib/hand'


x = Dealer.new
hand = x.deal_initial_hand
hand_value = x.get_hand_value(hand)
x.dealer_game_flow(hand, hand_value)

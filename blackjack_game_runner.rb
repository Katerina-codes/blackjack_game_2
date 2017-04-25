require_relative 'lib/blackjack_score'
require_relative 'lib/dealer'
require_relative 'lib/hand'


x = Dealer.new
x.ask_hit_or_stop
x.determine_next_move

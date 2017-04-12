require_relative 'lib/blackjack_score'

get_score = BlackjackScore.new
puts get_score.get_hand_value(["AS", "5D"])

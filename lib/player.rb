require_relative 'dealer'
require_relative 'blackjack_score'

class Player

  def get_initial_hand
    Dealer.new.ask_how_many_players
		Dealer.new.get_num_of_players
		card1 = Dealer.new.give_new_card
		card2 = Dealer.new.give_new_card
		hand = card1 + card2
		p "Player 1's hand:"
    p hand
		hand_value = BlackjackScore.new.get_hand_value(hand)
  end

end

x = Player.new
x.get_initial_hand

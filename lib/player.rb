require_relative 'dealer'
require_relative 'blackjack_score'

class Player

  def get_initial_hand
    dealer = Dealer.new
    player_one_hand = dealer.deal_initial_hand
  end

end

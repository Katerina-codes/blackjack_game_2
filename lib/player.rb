require_relative 'dealer'
require_relative 'blackjack_score'
require_relative 'commandlineio'

class Player

  def play_move
    @cl = CommandlineIO.new
    @cl.get_hit_or_stop
  end

end

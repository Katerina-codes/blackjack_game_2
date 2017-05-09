require_relative 'lib/blackjack_score'
require_relative 'lib/dealer'
require_relative 'lib/hand'
require_relative 'lib/player'
require_relative 'lib/game'


new_game = Game.new(CommandlineIO.new, Dealer.new, BlackjackScore.new, Player.new, Hand.new)
new_game.game_flow

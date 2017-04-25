def dealer_game_flow
   dealer gives 2 cards
 dealer asks if player wants to hit or stop - get_hit_or_stop
   if determine_next_move is stop, return score
   if determine_next_move is give_new_card -> give_new_card
   until determine_next_move == stop OR hand_is_busted
   give_new_card
   return score
 end


* If user puts in something other than hit or swap, keep prompting for the right option.
 If hit, give user another card
 If stop, return the score of the current total of cards.
 If sum of cards > 21 return card is busted and sum of cards.
  end

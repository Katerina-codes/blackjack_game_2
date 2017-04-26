Dealer game flow

Dealer gives 2 cards
until hand value > 21
Dealer asks if player wants to hit or stop -> get_hit_or_stop
Dealer gets user input
If determine_next_move is stop -> return score
If determine_next_move is give_new_card -> give_new_card
Return score

* If user puts in something other than hit or swap, keep prompting for the right option.

---
Unused test

  it "deals another card if user enters 'hit'" do
		dealer = Dealer.new
		expect(dealer.give_new_card).to include()
	end

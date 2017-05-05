class Hand

	def find_winner(hand1, hand2)
		if hand1 > 21 && hand2 > 21
			"Both hands are bust!"
		elsif hand1 == 21
			"Player one is the winner!"
		elsif hand2 == 21
			"Player two is the winner!"
		elsif hand1 > hand2 && hand1 < 21
		  "Player one is the winner!"
		elsif hand1 > hand2 && hand1 > 21
			"Player two is the winner!"
		elsif hand2 > hand1 && hand2 < 21
			"Player two is the winner!"
		elsif hand2 > hand1 && hand2 > 21
			"Player one is the winner!"
		end
  end

	def is_out?(hand_value)
		hand_value.to_i >= 21
	end

end

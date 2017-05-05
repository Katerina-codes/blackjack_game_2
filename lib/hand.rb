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
	#
	# 	if hand1 > 21
	# 		"Player one's hand is bust!"
	# 	# elsif hand1 < 21
	# 	# 	hand1 = 21 - hand1
	#    else
	# 		 hand1
	# 	end
	#
	# 	if hand2 > 21
	# 		"Player two's hand is bust!"
	# 	# elsif
	# 		#  hand2 < 21
	# 		# hand2 = 21 - hand2
	# 	else
	# 		hand2
	# 	end
	#
	# 	if hand1 == hand2
	#     "It's a draw!"
	# 	elsif hand1 == 21
	# 		"Player one is the winner!"
	# 	elsif hand2 == 21
	# 	  "Player two is the winner!"
	# 	elsif hand1 < hand2
	# 		"Player one is the winner!"
	# 	else
	# 		"Player two is the winner!"
	# 	end
  # end

	# 	if hand1 == hand2
	# 		"It's a draw!"
	# 	elsif hand1 > hand2 && hand1 <= 21
	# 		"Hand1 is the winner!"
	# 	elsif hand2 > hand1 && hand2 <= 21
	# 		"Hand2 is the winner!"
	# 	else
	# 		"Hand is busted. You are SO out!"
	# 	end
	# end

	def is_out?(hand_value)
		hand_value.to_i >= 21
	end

end

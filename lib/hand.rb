class Hand

  def find_winner(hand1, hand2)
    if hand1 == hand2
      "It's a draw!"
    elsif
       hand1 > hand2
      "Hand1 is the winner!"
    else
      "Hand2 is the winner!"
    end
  end

  def is_out?(hand)
    false
  end


end

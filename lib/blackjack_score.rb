class BlackjackScore

  def get_card_values(hand)
    if hand.length < 2
      "Enter a valid card"
    else
      if hand[0] == 'A'
        1
      elsif hand[0] == 'J'
        10
      else
        hand.to_i
      end
    end
  end

end

class BlackjackScore

  def get_card_values(hand)
    if hand.length < 2
      "Enter a valid card"
    else
      if hand[0] == 'A'
        1
      else
        2
      end
    end
  end

end

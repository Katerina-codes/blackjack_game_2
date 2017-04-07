class BlackjackScore

  def get_hand_value(hand)
    get_card_value(hand[0])
  end


  def get_card_value(card)
    if card.length < 2
      "Enter a valid card"
    elsif card.to_i == 0
      letter_value = {
        'A' => 1,
        'J' => 10,
        'Q' => 10,
        'K' => 10
      }
      letter_value[card[0]]
      else
        card.to_i
      end
    end

end

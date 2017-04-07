class BlackjackScore

  def get_hand_value(hand)   # 2H, 3D
    card_values = []
    hand.each do |card|             # 2h
      value = get_card_value(card)
      card_values.push(value)
      end
    card_values.reduce(:+)
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

class BlackjackScore

  def get_hand_value(hand)   # 2H, 3D
    card_values = []
    hand.each do |card|             # 2h
      value = get_card_value(card)
      card_values.push(value)
      end
    sum = card_values.reduce(:+)
      if sum == "Enter a valid card"
        sum
      elsif sum > 21 && card_values.include?(11)
        sum -= 10
      else
        sum
      end
  end

  def get_card_value(card)
    if card.length < 2
      "Enter a valid card"
    elsif card.to_i == 0
      letter_value = {
        'A' => 11,
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

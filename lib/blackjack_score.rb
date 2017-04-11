class BlackjackScore

  def get_hand_value(hand)
    card_values = []
    hand.each do |card|
      value = get_card_value(card)
      card_values.push(value)
    end

    sum = card_values.reduce(:+)

    if sum == -1
      sum
    elsif sum > 21 && card_values.include?(11)
      value_occurences = get_occurence_number(card_values)
      get_final_sum_minus_11(sum, value_occurences)
    else
      sum
    end
  end

  def get_card_value(card)
    if card.length < 2
      -1
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

  def get_occurence_number(card_values)
    counts = Hash.new(0)
    card_values.each do |value|
      counts[value] += 1
    end
    counts[11]
  end

  def get_final_sum_minus_11(sum, value_occurences)
    until sum < 21
      if value_occurences > 0
        sum -= 10
        value_occurences -= 1
      end
    end
    final_sum = sum
  end
end

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
      number_of_occurences = get_instances_of_11(card_values)
      minus_10_from_sum(sum, number_of_occurences)
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

  def get_instances_of_11(card_values)
    counts = Hash.new(0)
    card_values.each do |value|
      counts[value] += 1
    end
    counts[11]
  end

  def minus_10_from_sum(sum, number_of_occurences)
    until sum < 21
      if number_of_occurences > 0
        sum -= 10
        number_of_occurences -= 1
      end
    end
    updated_sum = sum
  end

end

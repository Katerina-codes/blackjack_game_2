class BlackjackScore

  def get_card_values(hand)
    if hand.length < 2
      "Enter a valid card"
    elsif hand[0].to_i == 0
      hash = {
        'A' => 1,
        'J' => 10,
        'Q' => 10,
        'K' => 10
      }
      hash[hand[0]]
      else
        hand.to_i
      end
    end

end

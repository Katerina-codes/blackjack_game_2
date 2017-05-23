class Computer

  def initialize(moves = ["hit", "stop"])
    @moves = moves
  end

  def play_move
    @moves.sample.downcase
  end

end

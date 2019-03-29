# class Board
class Board
  attr_accessor :board

  def initialize
    @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def update_board(input, token)
    @board[input.to_i - 1] = token
  end

  def slot_available(move)
    @board.to_set.include?(move)
  end
end

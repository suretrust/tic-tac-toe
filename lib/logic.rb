require 'set'

# class Game
class Game
  attr_accessor :over

  WINNING_SETS = [
    Set[1, 2, 3],
    Set[4, 5, 6],
    Set[7, 8, 9],
    Set[1, 4, 7],
    Set[1, 5, 9],
    Set[2, 5, 8],
    Set[3, 5, 7],
    Set[3, 6, 9]
  ].freeze

  def initialize
    @over = false
  end

  def self.create_players(name1, name2)
    [Player.new(name1, 'X', false), Player.new(name2, 'O', false)]
  end

  def player_wins(moves)
    result = false
    WINNING_SETS.each do |set|
      next unless set.subset?(moves.to_set)

      result = true
      break
    end
    result
  end
end

# class Player
class Player
  attr_accessor :name, :token, :won, :moves

  def initialize(name, token, won)
    @name = name
    @token = token
    @won = won
    @moves = []
  end
end

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

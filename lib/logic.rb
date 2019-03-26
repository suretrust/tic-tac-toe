class Game
  def initialize
    @over = false
  end

  def self.create_players(name1, name2)
    [Player.new(name1, 'X', false), Player.new(name2, 'O', false)]
  end
end

class Player
  attr_accessor :name, :token, :won

  def initialize(name, token, won)
    @name = name
    @token = token
    @won = won
  end
end

class Board
  attr_accessor :board

  def initialize
    @board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]
  end

  def show_board
    puts " \tA B C"
    @board.each_with_index do |row, x|
      print "#{x + 1}\t"
      row.each_with_index do |item, _y|
        print "#{item} "
      end
      puts ''
    end
  end

  def update_board(input, token)
    puts input.upcase
    case input
    when '1A'
      @board[0][0] = token
    when '1B'
      @board[0][1] = token
    when '1C'
      @board[0][2] = token
    when '2A'
      @board[1][0] = token
    when '2B'
      @board[1][1] = token
    when '2C'
      @board[1][2] = token
    when '3A'
      @board[2][0] = token
    when '3B'
      @board[2][1] = token
    when '3C'
      @board[2][2] = token
    end
  end

  def player_wins
    @board.each_with_index do |item, row|
      item.each_with_index do |i, col|
        if item.uniq.length == 1
          puts "Player wins"
        elsif
        end
      end
    end
    
  end

end

# def update_board

# end
# class Game
#   over?
#
# initialize 2 Players
# assign X or O to each
#
# give turns
#
# initialize Board
#
# ask for input?
#
# update/show board
#
# ...
#
# show result "game over"
#
#
# class Player?
#   name
#   plays_next?
#   x_or_o
#   won?
#
#   @name = name
#
# class Board?
#   initialize []
#   update(input)
#   show
#
# game = Game.new
# players_arr = Game.create_players("G", "F")
#
# puts "#{players_arr[0].name} player 1"
# puts "#{players_arr[1]} player 2"
#

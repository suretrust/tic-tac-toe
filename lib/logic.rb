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

  def update_board
    
  end
  
end




#def update_board
    
  #end
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

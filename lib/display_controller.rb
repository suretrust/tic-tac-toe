# class DisplayController
class DisplayController
  def initialize; end

  def self.intro_message
    puts 'A Tic-Tac-Toe game'
  end

  def self.get_name(num)
    print "Type in your name (player #{num}) to play the game: "
    name = gets.chomp
    if name == ''
      "Player #{num}"
    else
      name.upcase
    end
  end

  def self.starting_message(name1, name2)
    puts "#{name1} will be 'X' and #{name2} will be 'O'. #{name1} starts!"
  end

  def self.get_move(name)
    print "#{name}, select the spot you want to play on" \
            ' by entering the corresponding number, from 1 to 9: '
    gets.chomp.to_i
  end

  def self.show_board(board)
    board.each_with_index do |item, i|
      print "\n+- - - - - -+ \n| " if (i % 3).zero?
      print "#{item} | "
      puts "\n+- - - - - -+ \n\n" if i == 8
    end
  end

  def self.warning_wrong
    puts 'Wrong input, provide a number from 1 to 9. '
  end

  def self.warning_taken
    puts 'That slot is already taken, choose another one. '
  end

  def self.winner(name)
    puts "#{name} is the winner!"
  end

  def self.game_over
    puts 'GAME OVER!!!'
  end

  def self.error(error)
    puts "Error: #{error}"
  end
end

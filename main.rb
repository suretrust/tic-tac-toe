puts 'A Tic-Tac-Toe game'

print 'Type in your name (player 1) to play the game: '
player1 = gets.chomp.upcase
print 'Type in your name (player 2) to play the game: '
player2 = gets.chomp.upcase
puts "#{player1} will be O and #{player2} will be X"
board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]

def show_board(board)
  puts " \tA B C"
  board.each_with_index do |row, x|
    print "#{x + 1}\t"
    row.each_with_index do |item, _y|
      print "#{item} "
    end
    puts ''
  end
end
show_board(board)
puts "#{player1} starts!"
players = [player1, player2]
players.each do |item|
  print "#{item}, select the spot you want to play on by using the number
  of the row and the letter of the column (e.g: 1A): "
  # item_input = gets.chomp
  # puts "#{item}'s input is #{item_input}"

  show_board(board)
end

puts 'GAME OVER!!!'

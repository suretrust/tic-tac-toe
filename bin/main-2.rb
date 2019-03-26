require_relative '../lib/logic.rb'

game = Game.new
puts 'A Tic-Tac-Toe game'

print 'Type in your name (player 1) to play the game: '
name1 = gets.chomp.upcase
print 'Type in your name (player 2) to play the game: '
name2 = gets.chomp.upcase

players_arr = Game.create_players(name1, name2)
player1 = players_arr[0]
player2 = players_arr[1]

puts "#{player1.name} will be 'X' and #{player2.name} will be 'O'"
board = [%w[_ _ _], %w[_ _ _], %w[_ _ _]]

new_b = Board.new
new_b.show_board

puts "#{player1.name} starts!"

players_arr.each do |item|
  print "#{item.name}, select the spot you want to play on by using the number
  of the row and the letter of the column (e.g: 1A): "
  new_b.update_board(gets.chomp.upcase, item.token)
  puts item.token
  # puts "#{item}'s input is #{item_input}"

  new_b.show_board

  # check array
end

new_b.player_wins

puts 'GAME OVER!!!'

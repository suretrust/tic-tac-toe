require_relative '../lib/logic.rb'

game = Game.new
puts 'A Tic-Tac-Toe game'


    begin
      print 'Type in your name (player 1) to play the game: '
      name1 = gets.chomp.upcase # check name
      print 'Type in your name (player 2) to play the game: '
      name2 = gets.chomp.upcase
      
      players_arr = Game.create_players(name1, name2)
      player1 = players_arr[0]
      player2 = players_arr[1]
      
      puts "#{player1.name} will be 'X' and #{player2.name} will be 'O'"
      
      board = Board.new
      board.show_board
      
      puts "#{player1.name} starts!"
      
      until game.over
        players_arr.each do |player|
          print "#{player.name}, select the spot you want to play on by using the corresponding number, from 1 to 9: "
      move = gets.chomp.to_i # CHECK INPUT
    rescue StandardError=>e
      puts "Caught: #{e}"
      retry
    else
      if !board.slot_available(move)
        puts "That slot is already taken, choose another one"
        redo
      elsif !move.between?(1,9)
        puts "Wrong input, provide a number from 1 to 9"
        redo
      else
        player.moves.push(move)
        puts player.moves
        board.update_board(move, player.token)

        board.show_board
        if player.moves.length > 2 && game.player_wins(player.moves)
          puts "#{player.name} is the winner!"
          player.won = true

        end
        if player.won || player.moves.length == 5
          game.over = true
          puts 'GAME OVER!!!'
          break
        end
      end
      
    end
  end
end

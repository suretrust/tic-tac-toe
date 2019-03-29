require_relative '../lib/display_controller.rb'
require_relative '../lib/game.rb'
require_relative '../lib/board.rb'
require_relative '../lib/player.rb'

game = Game.new
DisplayController.intro_message
begin
  name1 = DisplayController.get_name(1)
  name2 = DisplayController.get_name(2)

  players_arr = Game.create_players(name1, name2)

  DisplayController.starting_message(players_arr[0].name, players_arr[1].name)

  board = Board.new
  DisplayController.show_board(board.board)

  until game.over
    players_arr.each do |player|
      move = DisplayController.get_move(player.name)
      if !move.between?(1, 9)
        DisplayController.warning_wrong
        redo
      elsif !board.slot_available(move)
        DisplayController.warning_taken
        redo
      else
        player.moves.push(move)
        board.update_board(move, player.token)

        DisplayController.show_board(board.board)
        if player.moves.length > 2 && game.player_wins(player.moves)
          DisplayController.winner(player.name)
          player.won = true
        end
        if player.won || player.moves.length == 5
          game.over = true
          DisplayController.game_over
          break
        end
      end
    end
  end
rescue StandardError => e
  DisplayController.error(e)
  retry
end

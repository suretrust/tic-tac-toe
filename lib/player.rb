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

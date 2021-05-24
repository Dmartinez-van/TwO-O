class Game
  attr_accessor :current_player, :game_on

  def initialize
    player1 = Player.new
    player2 = Player.new
    @game_on = true
    @current_player = player1
  end

  def change_player
    @current_player == player1 ? @current_player = player2 : @current_player = player1
  end
end 
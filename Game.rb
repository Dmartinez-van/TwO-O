class Game
  def initialize
    player1 = Player.new
    player2 = Player.new
    @current_player = player1
    @game_on = true
  end

  def change_player
    @current_player == player1 ? @current_player = player2 : @current_player = player1
  end

  def game_over?
    if player1.life == 0 || player2.life == 0
      puts "Good game!"
      puts "Player #{current_player}"
      @game_on = false
    end
  end

end 
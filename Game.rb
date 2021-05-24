class Game
  attr_accessor :current_player, :game_on, :player1, :player2

  def initialize
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    @game_on = true
    @current_player = player1
  end

  def change_player
    @current_player == player1 ? @current_player = player2 : @current_player = player1
  end

  def play_game
    while @game_on
      question = Question.new
      puts "Player #{@current_player.number}:", question.gen_q
      answer = gets.chomp.to_i
      if question.check_q answer
        puts "Correct! Good job!"
      else
        puts "Nope, you lose a life!"
        @current_player.life -= 1
      end

      # check for game over condition
      if player1.life == 0
        puts "Player 1 loses!"
        puts "Final Score!!"
        puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
        @game_on = false
      elsif player2.life == 0
        puts "Player 2 loses!"
        puts "Final Score!!"
        puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
        @game_on = false
      else
        puts "Current Score"
        puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
        puts "------ New Turn ------"
        puts ""
      end

      change_player
    end
  end

end 
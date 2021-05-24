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

class Player
  def initialize 
    @life = 3
  end

  attr_accessor :life
end

class Question
  def initialize
    @num1 = 0
    @num2 = 0
  end

  def gen_question
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What is #{@num1} plus #{@num2}?"
  end

  def check_question
    player_answer = gets.chomp.to_i
    player_answer == (@num1 + @num2) ? "Yup" : "Nope"
    if player_answer == (@num1 + @num2)
      "Yup, good job!"
      "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    elsif
      "Nope, you lose a life!"
      game.current_player -= 1
      "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    end
  end

 

end

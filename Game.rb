class Game
  attr_accessor :player1, :player2

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
      # Generate question, ask question to current player
      question = Question.new
      print "Player #{@current_player.number}: ", question.gen_q, "\n"

      # Get answer from user, check it for correctness, subtract life appropritately
      print "> "
      answer = gets.chomp.to_i
      if question.check_q answer
        puts "Correct! Good job!"
        pid = spawn('afplay', './Right.aiff')
        puts ""
      else
        puts "Nope, you lose a life!"
        pid = spawn('afplay', './Wrong.aiff')
        puts "Current answer was: #{question.num1 + question.num2}"
        puts ""
        @current_player.life -= 1
      end

      # check for game over condition
      if @current_player.life == 0
        puts "Player #{@current_player.number} loses!"
        puts "Final Score!!"
        puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
        puts "------ GAME OVER ------"
        `say 'Game over! Player #{@current_player.number == 1 ? 2 : 1} Wins!'`
        puts ""
        @game_on = false
      else
        puts "Current Score"
        puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
        puts "------ NEW TURN ------"
        puts ""
      end

      # Swap current player, begin new loop
      change_player
    end
  end

end 
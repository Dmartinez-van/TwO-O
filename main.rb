require './Game.rb'
require './Player.rb'
require './Question.rb'

game = Game.new


while game.game_on
  





  
  player1.life -= 1
#   # check for game over condition
  if player1.life == 0
    puts "Player 1 loses!"
    puts "Final Score!!"
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
    game.game_on = false
  elsif player2.life == 0
    puts "Player 2 loses!"
    puts "Final Score!!"
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
    game.game_on = false
  else
    puts "Current Score"
    puts "P1: #{player1.life}/3 vs P2: #{player2.life}/3"
    puts "------ New Turn ------"
  end
end
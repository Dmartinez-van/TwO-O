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

  # NOT GETTING/PUTTING FROM USER TO CLASSES
  # def check_question
  #   player_answer = gets.chomp.to_i
  #   # if player_answer == (@num1 + @num2)
    #   puts "Yup, good job!"
    #   puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    # elsif
    #   puts "Nope, you lose a life!"
    #   game.current_player -= 1
    #   puts "P1: #{p1.life}/3 vs P2: #{p2.life}/3"
    # end
  # end

 

end
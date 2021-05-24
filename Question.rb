class Question
  attr_reader :num1, :num2

  def initialize
    @num1 = 0
    @num2 = 0
  end

  def gen_q
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    "What is #{@num1} plus #{@num2}?"
  end

  def check_q answer
    answer == (@num1 + @num2) ? true : false
  end

end
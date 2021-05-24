class Player
  attr_accessor :life
  attr_reader :number
  
  def initialize num
    @life = 3
    @number = num
  end

end
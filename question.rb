class Question

  attr_accessor :ans, :input

  def initialize(player)
    @played = player
  end

  def generate_question
    @num1 = rand(20).ceil + 1
    @num2 = rand(20).ceil + 1
    self.ans = @num1 + @num2
    puts "#{@played.name}: What does #{@num1} plus #{@num2} equal?"
    self.input = gets.chomp.to_i
  end
end
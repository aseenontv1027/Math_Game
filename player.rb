class Player
  attr_accessor :life, :name

  def initialize(name)
    self.name = name
    self.life = 3
  end

  def lose_life
    self.life -= 1
    puts "#{name}: Seriously? No!"
  end

  def correct_ans
    puts "#{name}: YES! You are correct."
  end

end
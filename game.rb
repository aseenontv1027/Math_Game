require './question'

class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = player1
  end

  def run_game
    while @current_player.life > 0
      ans = Question.new(@current_player)
      ans.generate_question
      
      if ans.ans == ans.input
        @current_player.correct_ans
      else
        @current_player.lose_life
      end

      if @current_player.name == "Player 1"
        @player1 = @current_player
        if @player1.life == 0
          puts "#{@player2.name} wins with a score of #{@player2.life}/3"
          break
        end
        @current_player = @player2
      else
        @player2 = @current_player
        if @player2.life == 0
          puts "#{@player1.name} wins with a score of #{@player1.life}/3"
          break
        end
        @current_player = @player1
      end

      puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
      puts "----- New Turn -----"
    end
  end
end
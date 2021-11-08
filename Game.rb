require "./Player.rb"
require "./Question.rb"

class Game
  attr_accessor :player1, :player2, :active_player, :game_over

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @active_player = @player1
    @game_over = false
  end
end

g = Game.new

while g.game_over == false
  ## player 1
  q = Question.new
  print "Player 1: "
  puts q.ask
  playerAns = gets.chomp

  if playerAns == q.answer.to_s
    puts "Yes, Player 1, you are Correct!"
  else
    puts "No, Player 1! What are you thinking!?!"
    g.player1.lives -= 1
  end


  if g.player1.lives > 0
    puts "P1: #{g.player1.lives}/3 vs P2: #{g.player2.lives}/3"
    puts "----- NEW TURN -----"
  else
    puts "Player 2 wins with a score of #{g.player2.lives}/3!"
    puts "----- GAME OVER -----"
    return g.game_over = true
  end

  ## player 2
  q = Question.new
  print "Player 2: "
  puts q.ask
  playerAns = gets.chomp

  if playerAns == q.answer.to_s
    puts "Yes, Player 2, you are Correct!"
  else
    puts "No, Player 2! What are you thinking!?!"
    g.player2.lives -= 1
  end

  if g.player2.lives > 0
    puts "P1: #{g.player1.lives}/3 vs P2: #{g.player2.lives}/3"
    puts "----- NEW TURN -----"
  else
    puts "Player 1 wins with a score of #{g.player1.lives}/3!"
    puts "----- GAME OVER -----"
    return g.game_over = true
  end
  
end


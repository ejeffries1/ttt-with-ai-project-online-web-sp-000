require 'bundler'
Bundler.require

require_all 'lib'

def start
  puts "Welcome to TicTacToe"
  puts "Please choose how many players"

  puts "0 - Computer vs Computer"
  puts "1 - Player vs Computer"
  puts "2 - Player vs Player"

  num = gets.strip
  if num == "0"
    Game.new(Players::Computer.new("X"), Players::Computer.new("O"), Board.new).play
  elsif num == "1"
    Game.new(Players::Human.new("X"), Players::Computer.new("O"), Board.new).play
  elsif num == "2"
    Game.new(Players::Human.new("X"), Players::Human.new("O"), Board.new).play
  end

  puts "Would you like to play again? y/n"
  
  start until gets.strip == "n"
  
end
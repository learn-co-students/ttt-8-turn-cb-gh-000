require_relative '../lib/display_board.rb'
require_relative '../lib/move.rb'
require_relative '../lib/position_taken.rb'
require_relative '../lib/valid_move.rb'
require_relative '../lib/turn.rb'

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

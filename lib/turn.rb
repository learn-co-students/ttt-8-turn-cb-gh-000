require_relative "./move.rb"
require_relative "./valid_move.rb"
require_relative "./display_board.rb"
def input_to_index(input)
  return (input.to_i-1)
end
def turn(board=[" "," "," "," "," "," "," "," "," "])
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  move(board,index)
  until move
    input=gets.strip
    index=input_to_index(input)
    move(board,index)
  end
  display_board(board)
end

def turn board
  # we are using recursion here
  # get input
  # convert input to index
  # if index is valid
  #   make the move for input
  # else
  #   ask for input again until you get a valid input
  # end
  puts "Please enter 1-9:"
  input = input_to_index (gets.to_i)
  if valid_move? board, input
    move(board, input)
    display_board board
  else
    turn board
  end
end

def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? board, index
  if (index >= 0 && index <= 8) && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken? board, index
  if board[index] == " " || board[index] == "" || board[index].nil?
    false
  else
    true
  end
end

def move board, index, token = 'X'
  #do we need to add validations here of in the bin file
  board[index] = token
end

def input_to_index input
  input.to_i - 1
end

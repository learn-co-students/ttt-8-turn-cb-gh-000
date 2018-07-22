def valid_move? (board, index)
  if index < 0 || index > 8
    return false
  else
    return !position_taken?(board, index)
  end
end

def position_taken?(board, index)
  if(board[index] == " ")
    return false
  else
    return true
  end

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  puts(" iiiipunt #{input}")
  input_int = input.to_i
  puts ("inutintahsjdajs#{input_int}")
  index = input_int - 1
  return index
end

def move(board, index, value = "X")
  board[index] = value
  return board
end

def turn(board)
  puts("Please enter 1-9:")
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  index = index.to_i

  if (board[index] == "X" || board[index] == "O")
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  index = index.to_i

  if ((!position_taken?(board, index)))
    if (index >= 0 && index <= 8)
      return true
    end
  else
    return false
 end
end

def input_to_index(input)
  input = (input.to_i - 1)
end

def move(board, index, user_input = "X")
  return board[index] = user_input
end

def turn(board)
  puts "Please enter 1-9:"
  user_input  = gets
  user_input = input_to_index(user_input)

  if (valid_move?(board, user_input))
    move(board, user_input, choice = "X")
    display_board(board)
  else
    puts "Input is invalid, try another position..."
    turn(board)
  end
end

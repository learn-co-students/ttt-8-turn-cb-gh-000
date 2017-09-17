def display_board(board)
  puts "-------------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  end
  if board[index] == "X" || board[index] == "O"
    return false
  else
    return true
  end
end

def input_to_index(input)
  return input.to_i-1
end

def move(board, index, mark = "X")
  if valid_move?(board, index)
    board[index] = mark
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input  = gets
  index = input_to_index(input)
  if move(board, index) == false
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    move(board, index)  
  end

  display_board(board)
end

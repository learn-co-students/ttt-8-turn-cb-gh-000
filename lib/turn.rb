def display_board(tictactoe_arr)
  puts " #{tictactoe_arr[0]} | #{tictactoe_arr[1]} | #{tictactoe_arr[2]} "
  puts "-----------"
  puts " #{tictactoe_arr[3]} | #{tictactoe_arr[4]} | #{tictactoe_arr[5]} "
  puts "-----------"
  puts " #{tictactoe_arr[6]} | #{tictactoe_arr[7]} | #{tictactoe_arr[8]} "
end

def valid_move?(board, index)
  if index > 8 or index < 0 or position_taken?(board, index)
    return false
  else
    return true
  end
end

def position_taken?(board, index)
  if board[index] == "" or board[index] == " " or board[index] == nil
    return false
  end
  return true
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, turn="X")
  board[index] = turn
end

def turn(board)
  puts "Please enter 1-9:"
  raw_index = gets.strip
  index = input_to_index(raw_index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  
  next_move = gets.strip
  index = input_to_index(next_move)
  if valid_move?(board, index)
    move(board, index)
  else
    until valid_move?(board, index)
      next_move = gets.strip
      index = input_to_index(next_move)
    end
    move(board, index)
  end
  
  display_board(board)
end

def valid_move?(board, index)
  if index >= 0 && index < 9 && !position_taken?(board, index)
    return true
  end
  false
end

def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
  false
end

def move(board, index, value = "X")
  board[index] = value
end

def input_to_index(next_move)
  next_move.to_i - 1
end
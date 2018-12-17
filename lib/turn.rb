def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(pos)
  position = pos.to_i
  if(position > 0)
    return position - 1
  else
    return -1
  end
end

def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  elsif board[position] == "X" || board[position] == "O"
    return true
  end
end

def valid_move?(board, position)
  if(position > 9 || position < 0)
    return false
  else
    return !position_taken?(board,position)
  end
end

def move(board, pos, token = "X")
  position = input_to_index(pos)
  if valid_move?(board, position)
    board[position] = token
  end
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  position = gets.to_i
  if position < 0
    puts "please enter a valid position"
    puts "Please enter 1-9:"
    position = gets.to_i
  else
    puts position
    move(board, position)
  end
end

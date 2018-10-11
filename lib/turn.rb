def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > board.size - 1 || index < 0
    false
  elsif !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board == []
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end

def move(board, index, icon = "X")
  board[index] = icon
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

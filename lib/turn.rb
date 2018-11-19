def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if position_taken?(board, index) || index < 0 || index > 8
    false
  else
    true
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, character="X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"

  index = input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Invalid move!! Enter again!!"
    turn(board)
  end
end

def input_to_index(index)
  index.to_i - 1
end

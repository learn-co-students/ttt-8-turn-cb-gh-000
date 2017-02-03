# move
def move(array, pos,character = "X")
  array[pos] = character
end

# display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# input to index
def input_to_index(action)
  action.to_i - 1
end

# position taken
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    false
  elsif board[index] == nil
    false
  else
    true
  end
end

# valid move
def valid_move?(board, index)
  if position_taken?(board, index) == false && index < 9 && index >= 0
    true
  else
    false
  end
end

# TURN
def turn(board)
  puts("Please enter 1-9:")
  action = input_to_index(gets.strip())
  if valid_move?(board, action)
    move(board, action)
    display_board(board)
  else
    while valid_move?(board, action) != true
      puts("Please enter 1-9:")
      action = input_to_index(gets.strip())
      # valid_move(board, action)
    end
    move(board, action)
    display_board(board)
  end
end

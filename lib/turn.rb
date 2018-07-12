def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, "X")
    display_board(board)
    turn(board)
  else
    puts "Wrong move, please try again"
    display_board(board)
    turn(board)
  end
end

def input_to_index(users_input)
  users_input = users_input.to_i
  converted_input = users_input - 1
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  board[index] != " " #if filled = true; if empty = false
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

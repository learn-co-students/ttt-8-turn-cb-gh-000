def display_board(board = [" "," "," "," "," "," "," "," "," "])
puts   " #{board[0]} | #{board[1]} | #{board[2]} "
puts   "-----------"
puts   " #{board[3]} | #{board[4]} | #{board[5]} "
puts   "-----------"
puts   " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  if position_taken?(board,index) == false && index >= 0 && index < 9
    true
  else 
    false
  end
end

def position_taken?(board,index)
  if board[index] == " "
    false
  else
    true
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  while position_taken?(board,index) == false and valid_move?(board,index) == false do
    puts "Invalid input, please try again"
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    position_taken?(board,index)
    valid_move?(board,index)
  end
    move(board,index)
    display_board(board)
end

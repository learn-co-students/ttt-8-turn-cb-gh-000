board = [" "," "," "," "," "," "," "," "," ",]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  "#{user_input}".to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index) == true
    true
  elsif position_taken?(board, index) == false
    false
  else
    false
  end
end

def position_taken?(board, index)
  if index > 9 || index < 0
    false
  elsif (board[index] == " " || board[index] == "")
    true
  elsif board[index] == nil
    false
  else
    false
  end
end

def move(board,index, value = "X")
  board[index] = "#{value}"
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i

  index = input_to_index(user_input)

  if valid_move?(board, index) == false
    puts "Please enter 1-9:"
    user_input = gets.strip.to_i
  else
    move(board,index, value = "X")
  end
end

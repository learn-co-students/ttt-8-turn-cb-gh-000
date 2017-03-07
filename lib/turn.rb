def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
#if valid_move?(board, index) == true
  move(board, index)

#else
#  turn(board)
#end
end

def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  index = "#{user_input}".to_i - 1
  return index
end

def valid_move?(board, index)
if position_taken?(board, index) == false && index.between?(0, 8)
  return true
else
  return false
end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    puts "Don't Know"
end
end

def move(board, index, char="X")
  if valid_move?(board, index) == true
   board[index] = char
#   board[index] = char
   display_board(board)
  # puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
 else
   turn(board)
  end
end

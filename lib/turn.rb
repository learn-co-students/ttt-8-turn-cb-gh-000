def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip.to_i
  index_input = input_to_index(user_input)
  move(board, index_input)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def move(board, index, token = "X")
  if(valid_move?(board, index) == true)
    board[index] = token
    display_board(board)
  else
    turn(board)
  end

end
def valid_move?(board, index)
  if((index >=0) && (index <=8)) && (position_taken?(board,index) == true)
    true
  else
    false
  end
end
def position_taken?(board,index)
  if(board[index] == "X") || (board[index] == "O") || (board[index] == nil)
    false
  else
    true
  end
end
def input_to_index(user_input)
  user_input.to_i - 1
end

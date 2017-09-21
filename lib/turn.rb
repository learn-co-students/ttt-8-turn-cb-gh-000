def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} ";
end

def input_to_index(user_input)
  position = user_input.to_i
  return position - 1
end

def valid_move?(board, index)
  if (index.between?(0, 8))
    if (board[index] == "" || board[index] == " ")
      return true
    end
  else
    return false
  end

end

def move(board, index, mark = "X")
  board[index] = mark
end

def turn(board)
 puts "Please enter 1-9:"
 user_input = gets
 index = input_to_index(user_input)
fact = valid_move?(board, index)
if fact == true
  move(board, index)
  return display_board(board)

else
  turn(board)

end


end

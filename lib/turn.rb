def display_board (elements)
  puts (" #{elements[0]} | #{elements[1]} | #{elements[2]} ")
  puts ("-----------")
  puts (" #{elements[3]} | #{elements[4]} | #{elements[5]} ")
  puts ("-----------")
  puts (" #{elements[6]} | #{elements[7]} | #{elements[8]} ")
end

def input_to_index(user_Input)
  user_Input.to_i - 1
end

def valid_move?(board,index)
  if (board[index] == "X" || board[index] == "O")
    false
  elsif (!index.between?(0,8))
    false
  else
    true
  end
end

def move(board,index,symbol)
  board[index] = symbol
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  position=valid_move?(board,index)
  if (position == false)
    turn (board)
  end
  move(board,index,"X")
  display_board(board)

end

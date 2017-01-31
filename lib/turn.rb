def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(board, position)
  if (board[position] == 'X' || board[position] == 'O')
    return false
  elsif (position > board.length || position < 0)
    return false
  else
    return true
  end
end

def move(board, index, token = 'X')
  board[index] = token;
end

def turn(board)
  puts "Please enter 1-9:";
  input = gets;
  index = input_to_index(input)
  if (index >= 0 && index <= 9)  
    if valid_move?(board, index)
      move(board, index);
      display_board(board);
    end
  else
    turn(board);
  end
end
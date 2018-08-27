def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1;
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && (board[index] == " ")
    true
  else
    false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    is_valid = valid_move?(board, index)
    if is_valid
      move(board, index)
      display_board(board)
      break;
    end
  end
end

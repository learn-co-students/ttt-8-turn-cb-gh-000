
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1
end

def valid_move?(board, index)
  if(index > 8 || index < 0)
    false
  elsif (board[index] == "X" || board[index] == "O")
    false
  else
    true
  end
end

def move(board, index, input)
  board[index] = input
end

def get_input_index()
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
end

def valid_input?(board, index)
  valid_input = false
  while valid_input == false
    if(valid_move?(board, index))
      valid_input = true
      move(board, index, "X")
    else
      valid_input = false
      index = get_input_index()
    end
  end
end

def turn(board)
  index = get_input_index()
  valid_input?(board, index)
  display_board(board)
end

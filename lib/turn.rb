def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  if((index<=8 && index>=0) && (board[index] == ' ' || board[index] == ''))
    true
  else
    false
  end
end

def move(board, index, token='X')
  board[index] = token
end

def position_taken?(board,index)
  if (board[index] == ' ' || board[index] == '')
     true
  else
     false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if (valid_move?(board, index))
    move(board, index)
  else
    while !valid_move?(board, index) do
      puts "Please enter 1-9:"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
    move(board, index)
  end
  display_board(board)

  # Get user input
  # Call input_to_index method
  # validate input
  # ask for input if validation fails
  # check if move is valid and make valid move
  # display the resulting board correctly
end

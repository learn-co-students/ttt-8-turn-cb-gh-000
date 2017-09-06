def display_board (board)
  rows = [" #{board[0]} | #{board[1]} | #{board[2]} ", "------------", " #{board[3]} | #{board[4]} | #{board[5]} ", "------------", " #{board[6]} | #{board[7]} | #{board[8]} "]
  puts rows[0]
  puts rows[1]
  puts rows[2]
  puts rows[3]
  puts rows[4]
  puts rows[5]
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def position_taken?(board, index) #takes board and index as argument and checks if position is already taken with an "X" or "O"
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def valid_move?(board, index) #accept board and index arguments and return true if index.between(0, 8) && board[index]
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

def move(board, index, user_marker = "X") #accepts board, index and user_marker arguments and if valid_move? == true, adds user_marker to the selected index of the array
  if valid_move?(board, index) == true
    board[index] = user_marker
    return true
  end
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    until move(board, index, user_marker = "X") == true
      puts "Invalid move. Try again"
      user_input = gets.strip
      index = input_to_index(user_input)
    end
    puts display_board(board)
end

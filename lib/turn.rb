def turn(board)
  puts "Please enter 1-9:"
  input = gets.to_i
  input = input_to_index(input)
  if valid_move?(board, input)
    move(board, input, character = "X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position.between?(0,8)
    if !position_taken?(board, position)
      return true
    end
  else
    return false
  end
end

def input_to_index(position)
  position.to_i - 1
end

def move(board_array, index_board, character = "X")
  board_array[index_board] = character
end

def position_taken?(board, position)
  if board[position] == "" or board[position] == " "
    return false
  elsif board[position] == "X" or board[position] == "O"
    return true
  else
    return false
  end
end

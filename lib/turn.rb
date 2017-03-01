def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if move(board, index) == false
    turn(board)
  else
    display_board(board)
  end
end


# Helper methods

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  return input.to_i - 1
end


def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end


def move(board, index, player_char = "X")
  if valid_move?(board, index)
    return board[index] = player_char
  else
    return false
  end
end

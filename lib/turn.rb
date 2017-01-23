# turn method
def turn(board)
  valid_move = false
  until valid_move
    input = get_move
    index = input_to_index(input)
    valid_move = valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end


# helper methods
def display_board(board)
  divider = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts divider
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts divider
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def get_move
  puts "Please enter 1-9:"
  return gets.strip
end


def input_to_index(input)
  return input.to_i - 1
end


def move(board, position, player="X")
  board[position] = player
  return board
end


def position_taken?(board, index)
  if board[index] == 'X' || board[index] == 'O'
    return true
  else
    return false
  end
end


def valid_move?(board, index)
  if index < 0 || index > 8 || position_taken?(board, index)
    return false
  else
    return true
  end
end

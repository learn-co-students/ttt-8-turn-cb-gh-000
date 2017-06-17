def display_board(board)
  row1 = " #{board[0]} | #{board[1]} | #{board[2]} "
  row2 = " #{board[3]} | #{board[4]} | #{board[5]} "
  row3 = " #{board[6]} | #{board[7]} | #{board[8]} "
  divider = "-----------"
  puts row1
  puts divider
  puts row2
  puts divider
  puts row3
end

def input_to_index(input)
  index = input.to_i - 1
  return index
end

def position_taken?(board, index)
  position = board[index]
  if position == "" || position == " " || position = nil
    return false
  elsif position == "X" || position == "O"
    return true
  end
end

def valid_move?(board, index)
  return index >= 0 && index <= 8 && position_taken?(board, index) == false
end


def move(board, index, value="X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

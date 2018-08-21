
def turn(board)
  puts "Please enter 1-9:"
  number = gets.strip
  index = input_to_index(number)

  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end

  display_board(board)
end

def display_board(board)
  top_row = " #{board[0]} | #{board[1]} | #{board[2]} "
  middle_row = " #{board[3]} | #{board[4]} | #{board[5]} "
  bottom_row = " #{board[6]} | #{board[7]} | #{board[8]} "
  separated = "-----------"

  puts top_row
  puts separated
  puts middle_row
  puts separated
  puts bottom_row
end

def input_to_index(number)
  return number.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
  return board
end

def valid_move?(board, index)
  return index.between?(0, 8) && position_taken?(board, index) == false
end

def position_taken?(board, index_no)
  if board[index_no] == " " || board[index_no] == "" || board[index_no] == nil
    return false
  elsif board[index_no] == "X" || board[index_no] == "O"
    return true
  end
end

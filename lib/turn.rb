
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
end
end

def input_to_index(index_as_string)
  return (index_as_string.to_i ) -1
end

def valid_move?(board, index)
  if index<0 || index >8
    return false
  else
    return position_taken?(board, index)
end
end


def position_taken?(board, index)
  return board[index] == " " || board[index] == "" || board[index]==nil
end

def move(board, index, x_or_o="X")
  board[index]=x_or_o
end

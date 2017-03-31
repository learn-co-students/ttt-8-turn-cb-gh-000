#Defintion of display_board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#Defintion of position_taken?
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

#Defintion of valid_move?
def valid_move?(board, index)
  if index < 0 || index > board.length - 1
    return false
  end
  if !position_taken?(board, index)
    return true
  else
    return false
  end
end

#Defintion of move % input_to_index
def input_to_index(index)
  return index.to_i - 1
end

def move(board, index, character = 'X')
  board[index] =  character
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  if index >= 0 && index <=8
    if board[index] == " "
      return true
    else
      return false
    end
  end
end

def input_to_index(value)
  index = value.to_i - 1
  return index
end
def move(board, index, val = "X")
  board[index] = val
end

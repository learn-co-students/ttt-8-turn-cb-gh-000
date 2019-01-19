

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  index = input.to_i - 1
  return index
end

def valid_move?(board, index)
  if index.between?(0,9) and board[index] == " " or board[index] == ""
    return true
  else
    return false
  end
end

def move(board, index, mark)
  if valid_move?(board, index)
    board[index] = mark
    return board
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if index.between?(0, 8)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(val)
  return val.to_i - 1
end

def valid_move?(board, pos)
  if board[pos] == "X" || board[pos] == "O" || pos < 0 || pos > 8
    return false
  end
  return true
end

def move(board, pos, val)
  board[pos] = val
end

def turn(board)
  puts "Please enter 1-9:"
  pos = input_to_index(gets.strip)
  until valid_move?(board, pos)
    pos = input_to_index(gets.strip)
  end
  move(board, pos, "X")
  display_board(board)
end

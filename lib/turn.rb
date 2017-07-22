def turn(board)
  loop do
    puts "Please enter 1-9:"
    position = input_to_index(gets.strip)
    if valid_move?(board, position)
      move(board, position)
      display_board(board)
      break
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  end
  position_taken?(board, index)
end

def position_taken?(board, index)
  if board[index] == nil || board[index].strip == ""
    return true
  end
end

def input_to_index(move)
  move.to_i - 1
end

def move(board, index, character="X")
  board[index] = character
end

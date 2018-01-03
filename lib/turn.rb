def input_to_index(index)
  # index   = gets.strip.to_i
  return index.to_i - 1
end

def move(board, index, usr_char="X")
  board[index]  = usr_char
  display_board(board)
end

def asking_turn()
  puts "Please enter 1-9:"
  return input_to_index(gets.strip)
end

def turn(board)
  index = asking_turn
  until valid_move?(board, index) == true
    index = asking_turn
  end
  move(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  return (index.between?(0,8) && (position_taken?(board, index)))
end

def position_taken?(board, index)
  return ((board[index].strip.empty?) || (board[index].nil?))
end

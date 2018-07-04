def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts '-----------'
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts '-----------'
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i ? input.to_i - 1 : -1
end

def position_taken?(board, index)
  true if board[index] == 'X' or board[index] == 'O'
end

def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index) ? true : false
end

def move(board, index, value = 'X')
  board[index] = value
end

def get_index
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
end

def turn(board)
  index = get_index
  until valid_move?(board, index)
    index = get_index
  end
  move(board, index)
  display_board(board)
end

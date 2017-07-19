def input_to_index(input)
  input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken?(board, index)
end

def position_taken?(board, index)
  !!board[index] && board[index].strip != ""
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index input

  if !move(board, index, "X")
    turn(board)
  else
    display_board(board)
  end
end

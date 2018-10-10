def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
  return board[index] == ' ' && (index >= 0 && index <= 8)
end

def move(board, index, player = "X")
  board[index] = player
end

def turn(board, player = "X")
  puts "Please enter 1-9:"
  input = gets
  input = input_to_index(input)

  if valid_move?(board, input)
    move(board, input, player)
    display_board(board)
  else
    turn(board)
  end
end

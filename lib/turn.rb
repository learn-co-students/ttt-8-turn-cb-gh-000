def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, board.length - 1) && board[index] != "X" && board[index] != "O"
    true
  else
    false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index)
  end

  display_board(board)

end

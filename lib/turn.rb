def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def position_taken?(board, index)
  pos = board[index]
  if pos != " " && pos != "" && pos != nil
    true
  end
end

def valid_move?(board, index)
  if index.between?(0, 8) && !position_taken?(board, index)
    true
  end
end

def move(board, index, player="X")
  board[index] = player
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  index = input_to_index(pos)
  if valid_move?(board, index)
    move(board, index)
  else
    turn(board)
  end
end

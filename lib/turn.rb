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

def move(board, index, value="X")
  board[index] = value
  return board
end

def valid_move?(board, index)
  if index>8 || index<0
    return false
  elsif position_taken?(board, index)
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  pos=gets.strip
  pos=input_to_index(pos)
  if valid_move?(board, pos)
    move(board, pos)
    display_board(board)
  else
    puts "Invalid move."
    turn(board)
  end
end

# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index >= 0 && index <= 8
    true
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, value="X")
  if valid_move?(board, index)
    board[index] = value
  end
end

def turn(board)
  puts "Please enter 1-9:"
  usr_move = gets.strip
  idx = input_to_index(usr_move)
  if valid_move?(board, idx)
    move(board, idx)
    display_board(board)
  else
    turn(board)
  end
end

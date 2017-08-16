def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  num = input.to_i
  num = num-1
end


# code your #valid_move? method here
def valid_move?(board, index)
  validity = nil
  if position_taken?(board, index)
    validity = false
  elsif !(index.between?(0,8))
    validity = false
  else
    validity = true
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board,index)

  taken = nil
  if (board[index] ==  " " || board[index] == "" || board[index] == nil)
    taken = false
  else
   taken = true
  end
  taken
end

def move(board,input,character = "X")
  board[input] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index,"X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i - 1
end

def move(board,index,character="X")
  board[index] = character
  board
end

# code your #valid_move? method here
def valid_move?(board,input)
  if input > 8 || input < 0 || position_taken?(board,input)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,input)
  index = input
  if board[index] == "" || board[index] == " " || board[index] == nil || index > 8
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return "Other"
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board,index)
    board[index] = "X"
    display_board(board)
  else
    puts "Invalid. Please enter another number."
    turn(board)
  end
end

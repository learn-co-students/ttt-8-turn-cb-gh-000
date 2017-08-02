# Prints the Board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# Takes the number user enters and subtracts 1 to match array index
def input_to_index(index)
  return index.to_i - 1
end

# Adds the players move to the board
def move(board, index, char="X")
  board[index] = char
end

# Gets user input and checks to see if its not taken
def valid_move?(board, position)
  index = position.to_i
  if position_taken?(board, index) == false && index.between?(0, 8)
    return true
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " or board[index] == "" or board[index] == nil
    return false
  elsif board[index] == "X" or board[index] == "O"
    return true
  end
end

def turn(board)
 puts "Please enter 1-9:"
 display_board(board)
 input = gets.strip
 input = input_to_index(input)
 while !valid_move?(board, input)
   puts "Please enter 1-9:"
   input = gets.strip
   input = input_to_index(input)
 end
 move(board, input)
 return display_board(board)
end

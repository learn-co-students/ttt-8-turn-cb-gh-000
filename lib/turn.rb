# ask for input
# get input
# convert input to index
# if index is valid
  # make the move for index
  # show the board
# else
  # ask for input again until you get a valid input
# end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  var = input.to_i
  input = var - 1
end

def position_taken?(board,index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X"
    true
  elsif board[index] == "O"
    true
  end
end

def valid_move?(board,index)
  if position_taken?(board,index)
    false
  elsif index > 8
    false
  elsif index < 0
    false
  else
    true
  end
end

def move(board,input,piecechoice="X")
  board[input] = piecechoice
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    condition_one = position_taken?(board,index)
    condition_two = valid_move?(board,index)
   if condition_one == false && condition_two == true
   move(board,index)
   display_board(board)
 else
   turn(board)
  end
end

#def turn(board)
#  puts "Please enter 1-9:"
#  input = gets.strip
#  index = input_to_index(input)
  #if position_taken?(board,index) && valid_move?(board,index)
#    move(board,input,piecechoice="X")
#    display_board(board)
  #else
  #  turn(board)
#  end
#end

# Should accept a board as an argument and print out the current state of the board for the user.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# if index is valid make the move for index
def valid_move?(board, index)
  if board[index] == " " || board[index] == ""
    position_taken = false
  elsif board[index] == nil
    position_taken = false
  elsif board[index] == "X" || board[index] == "O"
    position_taken = true
  else
    position_taken = false
  end
  return index.between?(0,8) && !position_taken
end

# should accept a board, an index from the user and a token to mark that position
def move(board, index, token="X")
  board[index] = token
  return board
end

#input_to_index converts a user_input to an integer and subtracts 1 from the user_input
def input_to_index(user_input)
  user_input = user_input.to_i
  index = user_input - 1
  return index
end

def turn(board)
  #turn asks the user for input by printing: "Please enter 1-9:"
  puts "Please enter 1-9:"
  #turn gets the user input
  user_input = gets.strip
  #turn calls the input_to_index method
  index = input_to_index(user_input)
  #turn validates the input correctly
  if valid_move?(board, index)
    #turn makes valid moves
    move(board, index)
  else
    #turn asks for input again after a failed validation
    turn(board)
  end
  #turn displays a correct board after a valid turn
  display_board(board)
end

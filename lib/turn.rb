# print out the current state of the board for the user
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# convert user input to the position's index number
def input_to_index(input)
  input.to_i - 1
end

# check if a position is occupied
def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

# check if the index is within the correct range of 0-8 and is currently unoccupied by an X or O token
def valid_move?(board, index)
  index.between?(0,8) && !position_taken?(board, index)
end

# use index to set position within the board equal to the token
def move(board, index, character="X")
  board[index] = character
end

def turn(board)
  # ask for input
  puts "Please enter 1-9:"

  # get input
  input = gets.strip

  # convert input to index
  index = input_to_index(input)

  # if index is valid
  if valid_move?(board, index)
    # make the move for index
    move(board, index)

    # show the board
    display_board(board)
  else
    # ask for input again until you get a valid input
    turn(board)
  end
end

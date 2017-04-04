def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index)
    display_board(board)
  end
end

## HELPER METHODS ##
# => Prints out the current state of the board for the user.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# => Return true if the index is within the correct range of 0-8, and is currently unoccupied by an X or O token.
def valid_move?(board, index)
  if(index.between?(0, 8) && !position_taken?(board, index))
    return true
  else
    return false
  end
end

# => Returns true if position is filled. Returns false if the position is empty.
def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

# => Places token on game board
def move(board, index, token="X")
  board[index] = token
end

# => Converts raw input to index
def input_to_index(input)
  return input.to_i - 1
end
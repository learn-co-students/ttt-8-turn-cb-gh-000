def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

# code your #position_taken? method here!
def position_taken? (board, index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def valid_move?(board, index)
  index.between?(0,8)  && !position_taken?(board, index)
end

def move(board, position, char = "X")
  board[position] = char
end

def turn(board)
  # Get position of move
  puts "Please enter 1-9:"
  input = gets.strip

  # Correct the index
  index = input_to_index(input)


  # get input until move is valid
  until (valid_move?(board, index))
    # Get position of move
    puts "Please enter 1-9:"
    input = gets.strip

    # Correct the index
    index = input_to_index(input)
  end

  # make the move
  move(board, index)

  # display board after move
  display_board(board)
end

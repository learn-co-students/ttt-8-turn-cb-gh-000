# displays the tic tac toe board to be played on
def display_board(board = [" "," "," "," "," "," "," "," "," "])
  col = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts col
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts col
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# checks if move is legal by checking if position_taken or wrong index given
def valid_move?(board, index)
  if index >= 0  && index <= 8
    if position_taken?(board, index)
       return false
     else
       return true
     end
   else
      return false
   end
end

# takes position and shift down one to match array index
def input_to_index(user_input)
  user_input = user_input.to_i - 1;
end

#asks for character to input and where
def move(board, index, character = "X")
  board[index] = character
end

# checks if position is empty or contains character
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index].upcase == "X" || board[index].upcase == "O"
    return true
  end
end

# uses recursion until a valid move is made then display board with move
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

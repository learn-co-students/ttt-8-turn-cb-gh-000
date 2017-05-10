
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# turn method
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)

   if valid_move?(board, index) && !position_taken?(board, index)
     move(board, index)
     display_board(board)
   else

     turn(board)
   end
end
 # Checks if the move is valid.
 def valid_move?(board, index)
     return !(index < 0 || index > 8 || position_taken?(board, index))
 end

 # Checks if the position is already taken.
 def position_taken?(board, index)
     if board[index] == " " || board[index] == "" || board[index] == nil
        return false
     elsif board[index] == "X" || board[index] == "O"
         return true
     end
 end

 # Gets the user move and updates board.
 def move(board, index, char="X")
     board[index] = char
 end

 # Parses the input to board index.
 def input_to_index(input)
    return input.to_i - 1
 end

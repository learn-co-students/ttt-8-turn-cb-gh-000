def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (!position_taken?(board, index) && index.between?(0, 8))
     return true
   else
     return false
  end
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
   if (board[index] == "X" || board[index] == "O")
     return true
   else (board[index] == " " || board[index] == "" || board[index] == nil)
     return false
   end
end

def input_to_index(user_input)
 index = user_input.to_i - 1
end

def move(array, index, value = "X")
   array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  converted_input = input_to_index(input)
  if (valid_move?(board, converted_input))
     move(board, converted_input)
     puts "I entered #{ converted_input } in response to the gets prompt."
     display_board(board)
   else
     return turn(board)
  end
end

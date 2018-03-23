def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  # if board[index] == " " || board[index] == "" || board[index] == nil
  #   return false 
  # elsif board[index] == "X" || board[index] == "O"
  #   return true 
  # end
  
  return board[index] != "X" && board[index] != "O"
end 

def valid_move?(board, index)
  # # if position_taken?(board, index) == true 
  # #   return false 
  # # end
  # if index.between?(0,8) 
  #   return true
  # else return false
  # end
  return index.between?(0,8) && position_taken?(board, index)
end


def input_to_index(num)
  return index = num.to_i - 1
end
  
def move(board, index, token = "X")
  # input_to_index(index)
  board[index] = token
end


def turn(board)
  puts "Please enter 1-9:"
   input = gets
   
   myIndex = input_to_index(input)
   
   if !valid_move?(board, myIndex) 
     turn(board)
   end
   
   move(board, myIndex, "X")
   display_board(board)
end





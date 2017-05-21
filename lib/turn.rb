#code display_board function
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
#=====================================
# code your input_to_index and move method here!
def  input_to_index(value)
return  value.to_i - 1
end
#=======================================
# code your #valid_move? method here
def valid_move?(board, index)
  if board[index] != "X" && board[index] != "O" && index.between?(0,8)
    return true
  else
    return false
  end
end
#=========================================
#Move function
def move(board,index,token = "X")
board[index]= token
end
#======================================
#turn function
def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  index =  input_to_index(input)
  if valid_move?(board,index)
      move(board,index)
      display_board(board)
    else
  #until  valid_move?(board,index)
    turn(board)
  #end
  end

end
#def position_taken?(array,index)
  #if array[index] == "X" || array[index] == "O"
  #  return true
  #elsif array[index] == "" || array[index] == " " || array[index] == nil
  #  return false
  #end
#end

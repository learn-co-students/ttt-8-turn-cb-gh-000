
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
  index=index.to_i
  index=index-1
  return index
end

def move(board,index,character="X")
  board[index]=character
end
def ask_for_input
  #ask for input
  puts "Please enter 1-9:"
  #get input
  input=gets.strip
  #convert input to index
  input=input_to_index(input)
  #if index is valid
  return input
end
def turn(board)
  input=ask_for_input
  if valid_move?(board, input)==true
      move(board,input)
      display_board(board)
      return
    else
      puts "invalid"
      turn(board)
    end
end

def valid_move?(board, index)
  index.to_i
  if index<0
    return false
  end
  if(position_taken?(board, index)==false)
    return true
  elsif board[index]==""||board[index]==nil
    return false
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  index_number=index.to_i
    if(board[index_number]==" ")
      return false
    else
      return true
    end
end

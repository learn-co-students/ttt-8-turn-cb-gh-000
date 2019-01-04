def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end  
def input_to_index(index)
    i=index.to_i()-1
    return i
end
def position_taken?(board,index)
  
  if board[index]==" " || board[index]==""
    return false
  elsif board[index]=="X" ||   board[index]=="O"
    return true
    
  else
    return false
  end
end

def valid_move?(board, index)
  if index>=0 && index<=8 && position_taken?(board,index)==FALSE  
    
    return TRUE
  else
    return FALSE
  end
end  

def move(board,index,val="X")
  board[index]=val 
end
  
def turn(board)

#count=0
#until count==5  
  puts "Please enter 1-9:"
  val=gets.strip
  index=input_to_index(val)
  if valid_move?(board, index)==TRUE
    move(board,index)
  else
    val=gets.strip
  end 
 # count+=1 
 display_board(board)
#end   
end

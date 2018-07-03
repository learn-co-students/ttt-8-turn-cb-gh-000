def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(index)
  x=index.to_i
  x=x-1
end
def valid_move?(board,i)
  if board[i]==' '&& i < 9 && i > -1
    return true
  else
    return false
  end
end
def move(board,index,value='X')
  board[index]=value
end
def turn(board)
puts "Please enter 1-9:"
index=gets.strip()
i=input_to_index(index)
while(!valid_move?(board,i))
  puts "Please enter 1-9:"
index=gets.strip()
i=input_to_index(index)
end
move(board,i)
display_board(board)
end

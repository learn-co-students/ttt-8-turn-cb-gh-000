def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def turn(board)
  puts "Please enter 1-9:"
  input=gets
  index=input_to_index(input)
  c=valid_move?(board,index)
  if c==false
    puts "Please enter 1-9:"
    input=gets
  elsif c==true
    move(board,index)
    display_board(board)
  end
end
def input_to_index(input)
  index=input.to_i-1
  return index
end
def valid_move?(board,index)
  if index > 8
    return false
  elsif index < 0
    return false
  elsif board[index] =="X" || board[index] =="O"
    return nil
  elsif board[index]==" "
    return true
  else
    return true
  end
end

def move(board,index,tanda="X")
  board[index]=tanda
end
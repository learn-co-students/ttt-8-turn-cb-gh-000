def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(inde)
  return inde.to_i-1
end


def valid_move?(board,index)
  if(index>-1 && index<9 && !(board[index]=="X" || board[index]=="Y"))
    return true
  else
    return false
  end
end

def move(board,index,mov="X")
  board[index]=mov
end

def turn(board)
  puts "Please enter 1-9:"
  x=gets.strip
  ind=input_to_index(x)
  until(valid_move?(board,ind))
      puts "Please enter 1-9:"
      x=gets.strip
      ind=x.to_i
    end
  move(board,ind)
  display_board(board)
end

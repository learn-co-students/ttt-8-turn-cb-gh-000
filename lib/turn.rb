def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if(board.length<index || 0>index)
      return false
  end
  if (board[index]!="X" || board[index]!="O")
    return false
  end
  return true
end

def move(board,index,token="X")
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  getIndex =input_to_index(gets.strip)
  if getIndex<0 || getIndex>8
    turn(board)
  end
  isValid = valid_move?(board,getIndex)
  if isValid==false
    move(board,getIndex)
    display_board(board)

  end

end

def input_to_index(position)
  return position.to_i-1
end

def position_taken?(board=[" "," "," "," "," "," "," "," "," "],index=0)
  if (board[index]=="X")||(board[index]=="O")
    return true
  end
  return false
end

def valid_move?(board=[" "," "," "," "," "," "," "," "," "],index=0)
  if position_taken?(board,index)
    return false
  elsif (index<0)||(index>8)
    return false
  end
  return true
end

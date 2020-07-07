def move (board=["X"," "," "," "," "," "," "," "," "],index=0,input="X")
  if valid_move?(board,index)
    board[index]=input
    return true
  else
    return false
  end
end

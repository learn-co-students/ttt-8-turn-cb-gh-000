def move (board=["X"," "," "," "," "," "," "," "," "],index=0,inputt="X")
  if valid_move?(board,index)
    board[index]=inputt
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
  return
end

def input_to_index(input)
  if input=="invalid"
    return -1
  else
  input=input.to_i-1
  return input
  end
end

def move(board,index,value="X")
  board[index]=value
end

def valid_move?(board,index)
  if index>=0 && index<=board.length-1 && !position_taken?(board,index)

    return true
  else return false
  end
end



def position_taken?(board,index)
  if board[index]==" "|| board[index]=="" || board[index]==nil
    return false
  else return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)

  if !valid_move?(board,index)
    turn(board)
  else
    move(board,index,"X")
    display_board(board)

  end

end

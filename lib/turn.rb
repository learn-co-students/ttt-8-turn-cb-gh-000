def display_board(board)
  print(" #{board[0]} | #{board[1]} | #{board[2]} ")
  print("-----------")
  print(" #{board[3]} | #{board[4]} | #{board[5]} ")
  print("-----------")
  print(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(x)
  x.to_i-1
end

def valid_move?(board,index)
  if index>=0 && index<=8
    if board[index] == "" || board[index] == " "
      return true
    end
    return false
  end
  return false
end

def move(board,index,char)
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  s = gets.strip
  ind = input_to_index(s)
  if valid_move?(board,ind)
    move(board,ind,"X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between?(0,8)
    return !postion_taken?(board,index)
  end
  false
end

def postion_taken?(board,index)
  temp=board[index]
  if temp==" "||temp==""||temp==nil
    return false
  end
  true
end

def move(board,index,token="X")
  board[index]=token
end

def input_to_index(index)
  index.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

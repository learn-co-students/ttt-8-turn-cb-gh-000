def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  #index = index.to_i - 1
  if (index.between?(0,8) && !position_taken?(board, index))
    true
  else
    false
  end
end

def position_taken?(board,index)
  if (board[index] == nil || board[index] == " " || board[index] == "")
     false
  else
     true
  end
end

def input_to_index(move)
  move = move.to_i - 1
  move
end

def move(board,index,token = 'X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  temp = gets.strip()
  val = input_to_index(temp)
  if (valid_move?(board, val))
    move(board, val)
    display_board(board)
  else 
    turn(board)
  end
end

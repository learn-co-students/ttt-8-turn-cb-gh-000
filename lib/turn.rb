board = [" ", " ", " ", " ", " ", " ", " ", " ", " i"]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board,index)
#  index = input_to_index(index)
  if index.between?(0,8) and !position_taken?(board,index)
    return true
  else
     return nil
  end
end

def position_taken?(board,index)
  if board[index] == "" or board[index] == " " or board[index] == nil
    return false
  elsif board[index] == 'X' or board[index] == "O"
    return true
  end
end
def input_to_index(a)
  a = a.to_i
  a = a - 1
end
def move(board,index,player='X')
  #index = input_to_index(index)
  board[index] = player
end

def turn(board)
  puts "Please enter 1-9:"
  int = gets.strip

  int = input_to_index(int)

  if valid_move?(board,int)
    move(board,int)
    display_board(board)
  else
    turn(board)
  end
end

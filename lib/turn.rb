board=board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  return user_input.to_i-1
end


def valid_move?(board,index)
  if index.to_i.between?(0,8)
    if board[index.to_i]=="X"|| board[index.to_i]=="O"
      return false
    else
      return true
    end
  else
    return false
  end
end

def move(board,index,player)
  board[index]=player
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
  if valid_move?(board,index)
    move(board,index,"X")
    display_board(board)
  else
    turn(board)
  end
end

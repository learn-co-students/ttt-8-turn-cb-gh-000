def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  flag = valid_move?(board, index)
  if(flag == true)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if(index >=0 && index <= 8)
    if(board[index]=="" || board[index]==" " || board[index] == nil)
      return true
    end
  end
  return false
end

def input_to_index(number)
  return number.to_i-1
end

def move(board, pos, value="X")
    board[pos]=value
end

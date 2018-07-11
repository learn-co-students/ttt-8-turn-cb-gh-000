def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def valid_move?(board,index)
  if index<0 || index>9
    false
  elsif board[index] == " " || board[index] =="" || board[index] == nil
    true
  else
    false
  end
end

def position_taken?(board,index)
  if board[index] == " " || board[index] =="" || board[index] == nil
    false
  else
    true
  end
end



def input_to_index(input)
  k = input.to_i
  l = k-1
  return l
end


def move(board,index,value = "X")
  board[index] = value
end




def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  b = valid_move?(board,index)
  if b == true
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

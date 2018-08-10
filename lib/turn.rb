def valid_move?(board, index)
  if exists?(index) and !position_taken?(board, index)
    return true
  end
  return false
end

def exists?(index)
  if index<0 or index>8
    return false
  end
  return true
end

def position_taken?(board, index)
  if board[index]==" "
    return false
  end
  return true
end

def input_to_index(index)
 
  return index.to_i-1
end

def display_board(board)
  puts" #{board[0]} | #{board[1]} | #{board[2]} "
  puts"-----------"
  puts" #{board[3]} | #{board[4]} | #{board[5]} "
  puts"-----------"
  puts" #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board,index,char="X")

  board[index]=char
  return board
end
  
def char_choose(count)
  if count % 2 ==0
    return "O"
  end
  return "X"
end


def turn(board)
  puts "Please enter 1-9:"
  counter=1
  until counter==2
    input = gets.strip
    input = input_to_index(input)
    char = char_choose(counter)

    if valid_move?(board, input)
     board= move(board,input,char)
    
     display_board(board)
    else
      turn(board)
    end
    counter+=1
  end
end

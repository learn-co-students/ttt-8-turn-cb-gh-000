def makeplay(x)
  return " #{x} "
end

def valid_move?(board,index)
   !position_taken?(board,index) && index.between?(0,8)
end

def position_taken?(board,index)
  board[index] != " " && board[index] != "" && board[index] != nil
end

def display_board(state)
  separator = '|'
  blank_space = '   '
  dash = '-----------'
  puts makeplay(state[0]) + separator + makeplay(state[1]) + separator + makeplay(state[2])
  puts dash
  puts makeplay(state[3]) + separator + makeplay(state[4]) + separator + makeplay(state[5])
  puts dash
  puts makeplay(state[6]) + separator + makeplay(state[7]) + separator + makeplay(state[8])
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board,pos,value = "X")
  board[pos] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i-1
  return index
end

def valid_move?(board,index)
  if index>=0 && index<9
    if !(position_taken?(board,index))
      return true
    end
  end
  return false
end

def position_taken?(board,index)
  if board[index]=="X" or board[index]=="O"
    return true
  else
    return false
  end
end

def move(board,index,value="X")
  board[index] = value
end

def turn(board)
  valid = false
  until valid
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board,index)
  end
  move(board,index)
  display_board(board)
end

def valid_move?(board,index)
  if index.between?(0,8)
    if position_taken?(board,index) == false
      return true
    end
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while valid_move?(board,index) == false
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board,index)
  display_board(board)
end

def input_to_index(inpu)
  inpu = inpu.to_i - 1
  return inpu
end

def move(board,inpu,char = "X")
  board[inpu] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  unless valid_move?(board,input_to_index(input))
    turn(board)
  end
  index = input_to_index(input)
  move(board,index,"X")
  display_board(board)
end

def display_board(board)
  delimiter = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts delimiter
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts delimiter
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.to_i.between?(0,8) then
    if position_taken?(board,index) then
      return false
    else
      return true
    end
  else
    return false
  end
end

def position_taken?(board,index)
  if board[index.to_i]==""||board[index.to_i]==" "||board[index.to_i]==nil then
    return false
  else
    return true
  end
end

def move(board,index,character="X")
  board[index] = character
end

def input_to_index(input)
  input.to_i-1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  integer = input.to_i - 1
end

def valid_move?(board, index)
 taken = position_taken?(board, index)
 if taken == false && index >= 0 && index <= 8
   return true
 else
   return false
 end
end

def move(array, index, value = "X")
  array[index] = value
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)
  valid = false
  stopLoop = false
  while stopLoop == false
    if valid_move?(board, index) == true
        move(board,index)
        stopLoop = true
    else
        puts "Please enter 1-9:"
    end
  end
  display_board(board)
  return 0
end

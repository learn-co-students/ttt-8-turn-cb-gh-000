def valid_move?(board, index)
  if (!(index>8||index<0) && !(position_taken?(board, index)))
    return true
  end
  false
end


# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if(board[index] == " " ||board[index] ==  "" ||board[index] ==  nil)
    return false
  end
  true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(n)
  number = n.to_i
  number = number - 1
  number
end

def move(array, index, value = "X")
  array[index] = value
end

def turn(array)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if(valid_move?(array, index))
  move(array, index)
  display_board(array)
else
  puts "Invalid"
  turn(array)
  
end
end

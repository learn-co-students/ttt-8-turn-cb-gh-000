def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

 if valid_move?(board , index) == false
    turn(board)
  else
  move(board , index ,value="X")
  display_board(board)
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board , index)
  if index < 0 || index > 8
    return false
  elsif position_taken?(board , index)
    return false
  else
    return true
  end
end



def position_taken?(board , index)
  if board[index] == "X" ||board[index] == "Y"
    return true
  end
  if board[index] == "" || board[index] == " "
    return false
  end
  if board[index] == nil
    return false
  end

end


def input_to_index(input)
  index = "#{input}"
  int = index.to_i
  return int-1
end


def move(array , input , value="X")
array[input] = value

end

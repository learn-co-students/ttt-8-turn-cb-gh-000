
def turn(board)
  valid = false
  while !valid
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid = valid_move?(board, index)
    if !valid
      puts "Please enter a valid input"
    end
  end
  move(board, index)
  display_board(board)

end



def display_board(board)
  i = 1
  9.times do
    print " #{board[i-1]} "
    if i != 9
      if i.modulo(3) == 0
        puts ""
        puts "-----------"
      else
        print "|"
      end
      i += 1
    end
  end
  puts ""
end

def valid_move?(board, index)
  if (index < 9 && index >= 0)
    if !position_taken?(board, index)
      return true
    else
      return false
    end
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == "X"|| board[index] == "O")
    return true
  else
    return false
  end
end

def move(board, index, x_or_o = "X")
  board[index] = x_or_o
end

def input_to_index(input)
  num = input.to_i
  return num - 1
end

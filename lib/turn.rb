def display_board(state = Array.new(9, " "))
  range = 0..(state.length - 1)
  output = ""
  range.each do |i|
    if (i%3!=0 or i==0)
      output += " #{state[i]} "
      if i%3!=2
        output += "|"
      end
    else
      output += "\n-----------\n #{state[i]} |"
    end
  end
  puts output
end

def input_to_index(input)
  if input != "0" && input.to_i == 0
    return -1
  else
    return input.to_i-1
  end
end

def is_taken?(board, index)
  return board[index] == " "
end

def valid_move?(board, index)
  if index.between?(0,8) == false
    return false
  else
    return is_taken?(board, index)
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board, token="X")
  while true do
    puts"Please enter 1-9:"
    userin = input_to_index(gets.strip)
    if valid_move?(board, userin)
      move(board, userin, token)
      display_board(board)
      break
    else
      puts "Invalid move, please try again."
    end
  end

end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index, "X")

  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
  index = index.to_i
  index = index - 1

end

def move(board, index, player = "X")
  board[index] = player
end


def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board, index)
  if index < 0 || index > 9
    return false
  elsif !(position_taken?(board, index))
    return true
  else
    return false
  end
end

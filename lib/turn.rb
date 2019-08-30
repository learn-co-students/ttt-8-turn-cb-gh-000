def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def valid_move?(board, index)
  return index >= 0 && index < 9 && !position_taken?(board,index)
end


def position_taken?(board, index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
  return false
end

def input_to_index(input)
  return input.to_i-1
end

def move(board, index, charValue = "X")
  board[index] = charValue
  return board
end

def get_valid_input(board)
  validInput = false
  while !validInput
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if valid_move?(board, input)
      validInput = true
    end
  end
  return input
end

def turn(board)

  input = get_valid_input(board)
  move(board, input)
  display_board(board)

end

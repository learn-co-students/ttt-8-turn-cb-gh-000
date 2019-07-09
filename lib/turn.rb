def display_board(boardState)
  puts " "+ boardState[0] +" | "+ boardState[1] +" | "+ boardState[2] +" "
  puts "-----------"
  puts " "+ boardState[3] +" | "+ boardState[4] +" | "+ boardState[5] +" "
  puts "-----------"
  puts " "+ boardState[6] +" | "+ boardState[7] +" | "+ boardState[8] +" "
end

def valid_move?(board, pos)
  posSize = board.size - 1
  if pos > posSize || pos < 0
    return false
  end
  return position_taken?(board, pos)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, pos)
  posItem = board[pos]
  if posItem == " " or posItem == "" or posItem == nil
    return true
  else
    return false
  end
end

def turn(board)
    puts "Please enter 1-9:"
    moveTo = gets.strip
    moveTo = input_to_index(moveTo)
    if valid_move?(board, moveTo)
      move(board, moveTo)
      display_board(board)
    else
      turn(board)
    end
end

def input_to_index(input)
  number = input.to_i
  number -1
end

def move(board, pos, player = "X")
  board[pos] = player
end

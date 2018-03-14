def valid_move?(board, position)
  if position < 0
    return false
  end

  return !position_taken?(board, position)
end

def position_taken?(board, position)
  if board[position] == " " ||
     board[position] == "" ||
     board[position] == nil
     return false
  end
  return true
end

def input_to_index(index)
  if index.to_i - 1 < -1
    return -1
  end

  return index.to_i - 1
end

def move(board, position, character = "X")
  board[position] = character
end

def display_board(board)
  if board.empty?
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
  end

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def turn(board)
  while true
    puts "Please enter 1-9:"
    position = gets.chomp
    index = input_to_index(position)
    if valid_move?(board, index)
      break
    end
  end

  move(board, index, "X")
  display_board(board)
end

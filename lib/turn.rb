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

def display_board(piece_array)
  if piece_array.empty?
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
  end

  puts " #{piece_array[0]} | #{piece_array[1]} | #{piece_array[2]} "
  puts "-----------"
  puts " #{piece_array[3]} | #{piece_array[4]} | #{piece_array[5]} "
  puts "-----------"
  puts " #{piece_array[6]} | #{piece_array[7]} | #{piece_array[8]} "

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

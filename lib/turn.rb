def display_board(board)
  index = 0;
  while index < 9
    puts " #{board[index]} | #{board[index+1]} | #{board[index+2]} "
    puts "------------"
    index += 3
  end
end

def input_to_index(user_input)
  return user_input.to_i-1
end

def valid_move?(board, index)
  if board[index] != " " || index < 0
    return false
  else
    return true
  end
end

def move(board, pos, char = "X")
  board[pos] = char
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  isValid = valid_move?(board, index)

  until isValid
      puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    isValid = valid_move?(board, index)
  end

  move(board, index)

  display_board(board)
end

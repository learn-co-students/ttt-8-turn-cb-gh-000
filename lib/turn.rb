def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-" * 11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-" * 11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
    move(board, index)
    display_board(board)
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, player = "X")
  board[index] = player
end

def valid_move?(board, index)
  if index < 0 || index > (board.size - 1)
    return false
  elsif board[index] == "O" || board[index] == "X"
    return false
  else
    return true
  end
end

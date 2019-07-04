def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  0 <= index && index <= 9 && board[index] == " "
end

def move(board, index, c="X")
  if valid_move?(board, index)
    return board[index] = c
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while move(board, index) == nil
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  display_board(board)
end

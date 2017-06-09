def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  board[index] == "O" || board[index] == "X"
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken?(board, index)
end

def move(board, index, value="X")
  board[index] = value
end

def input_to_index(inp)
  if inp =~ /\A\d+\z/ ? true : false then
    inp.to_i - 1
  else
    -1
  end
end

def turn(board)
  index = -1
  puts "Please enter 1-9:"
  index = input_to_index(gets.split[0])
  while !valid_move?(board, index) do
    puts "Please enter 1-9:"
    index = input_to_index(gets.split[0])
  end
  move(board, index)
  display_board(board)
end

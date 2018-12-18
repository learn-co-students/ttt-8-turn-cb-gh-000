def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil) && index.between?(0,8)
    true
  else
    false
  end
end

def move(board,index, character = "X")
  if valid_move?(board,index)
    board[index] = character
    display_board(board)
  else
    turn(board)
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  #input_i = input.to_i
  index = input_to_index(input)

  move(board,index)
end

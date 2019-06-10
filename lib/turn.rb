

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i-1
end

def valid_move?(board, position)
    position>=0 && position<9 && !position_taken?(board,position)
end

def position_taken?(board, position)
  !(!board[position] || board[position]==nil|| board[position]==" " || board[position] == "")
end

def move(board, position, element="X")
  board[position] = element
end

def ask_position()
  puts "Please enter 1-9:"
  gets.strip
end

def turn(board)
  position = ask_position
  index = input_to_index(position)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
  else
    turn (board)
  end
end

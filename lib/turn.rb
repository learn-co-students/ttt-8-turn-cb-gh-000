def turn (board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move? board, index 
    move(board,index)
    display_board(board)
  else
    puts "Invalid input. Try again:"
    turn(board)
  end
end

def valid_move? (board, index)
  index >= 0 && index <= 8 && !position_taken?(board,index)
end

def position_taken? (board, index) 
  !(!board[index] || board[index] == "" || board[index] == " ")
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(move)
  move.to_i - 1
end

def move(board, move, char = "X")
  board[move] = char
end
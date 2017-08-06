def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if (valid_move?(board, index))
    move(board, index)
    display_board(board)
  else
    puts "Invalid move! Try again: "
    turn(board)
  end
end

def input_to_index(input)
  (input.to_i - 1)
end

def valid_move?(board, numb)
  if (numb < 0 || numb > 8)
    false
  elsif (board[numb] == "X" || board[numb] == "O")
    false
  else
    true
  end
end

def move(board, numb, player= "X")
  board[numb] = player
end

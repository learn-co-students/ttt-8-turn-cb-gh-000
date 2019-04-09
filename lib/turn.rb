def display_board(board)
   puts " #{board[0]} | #{board[1]} | #{board[2]} "
   puts "-----------"
   puts " #{board[3]} | #{board[4]} | #{board[5]} "
   puts "-----------"
   puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, num)
  return num >= 0 && num <= 8 && !position_taken?(board, num)
end

def position_taken?(board, num)
  return board != [] && (board[num] == "X" || board[num] == "O")
end

def move(board, num, value = "X")
  board[num] = value
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  index = input_to_index(user_input)
  if !valid_move?(board, index)
    turn(board)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  num = gets.chomp.strip
  index = input_to_index(num)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    # making use of recursion
    turn(board)
  end
end

def input_to_index(input)
  (input.to_i) - 1
end

def move(board, index, choice = "X")
  board[index] = choice
end
def position_taken?(board, index)
  board[index] == "X" || board[index] == "O" ? true : false
end

def valid_move?(board, index)
 !position_taken?(board, index) && index.between?(0, 8)
end

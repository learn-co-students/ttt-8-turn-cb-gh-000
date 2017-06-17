def valid_move?(board , index)
  (0..8)===index && !position_taken?(board , index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board , index)
  board[index]=="X" || board[index]=="O"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(ind)
  ind.to_i - 1
end

def move(array , index , char="X")
  array[index]=char
end

def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board , index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board , index)
  display_board(board)
end

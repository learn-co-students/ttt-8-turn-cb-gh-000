def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  return index.between?(0,8) && !position_taken?(board,index)
end

def position_taken?(board,index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def input_to_index(number)
  return number.to_i - 1
end

def move(board , index , choice = "X")
  board[index] = choice
end
def turn(board)
  index = 0
  loop do
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    break if valid_move?(board,index)
  end
  move(board, index)
  display_board(board)
end

def turn(board)
  valid_move = false
  until valid_move
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    valid_move = valid_move?(board, index)
  end
  move(board, index, 'X')
  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index.between?(0 , 8)
    return !position_taken?(board, index)
  else
    return false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return (board[index] != " " && board[index] != "") && !(board[index] == nil)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(position)
  return position.to_i - 1
end

def move(board, index, str = "X")
  board[index] = str
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, index)
  return !position_taken?(board, index) && index.between?(0, 8)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  return !(board[index] == "" || board[index] == " " || board[index] == nil)
end

def move(board, index, token='X')
  board[index] = token
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      break
    end
  end
end

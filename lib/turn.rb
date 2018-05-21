def display_board
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
  puts "-----------"
  puts "   |   |   "
end

# code your #valid_move? method here
def valid_move?(board, index)
if position_taken?(board, index)
  return false
elsif index.between?(0,8)
  return true
else
end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index)
if board[index] == ""
  false
elsif board[index] == " "
  false
elsif board[index] == nil
  false
elsif board[index] == 'X' || board[index] == 'O'
  true
end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(number)

number.to_i - 1
end



def move(array, index, value = "X")

array[index] = value
end

def turn(board)
puts "Please enter 1-9:"
display_board(board)

input = gets.strip
index = input_to_index(input)
if valid_move?(board, index)
  move(board, index)
  display_board(board)

else
  puts "Please enter 1-9:"
  input = gets.strip

end

end

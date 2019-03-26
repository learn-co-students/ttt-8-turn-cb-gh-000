def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index)
  return -1 if index.to_i.eql? 0
  raise ArgumentError if (index.to_i - 1) < 0
  index.to_i - 1
end

def move(array,input_to_index,value = 'X')
  array[input_to_index] = value
end
# code your #valid_move? method here
def valid_move?(board,index)
  return false unless index.between?(0,8)
  return true unless position_taken?(board,index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  return false if board[index].nil?
  board[index] == '' || board[index] == ' ' ? false : true
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.chomp
  value = input_to_index(index)
  index_valid = value_valid(board,value)
  move(board,index_valid)
  display_board(board)
end

def value_valid(board,value)
  until valid_move?(board,value)
    puts "Please enter 1-9:"
    index = gets.chomp
    value = input_to_index(index)
  end
  value
end

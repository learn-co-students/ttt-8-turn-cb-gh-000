def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  index = input.to_i - 1
end

def move(array, index, symbol = "X")
  array[index] = symbol
end

# code your #valid_move? method here
def valid_move?(board, index)
  if index > 8 || index < 0
    return false
  elsif position_taken?(board, index) == true
    return false
    puts "Position already taken"
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil || (board[index] != "X" && board[index] != "O")
    return false
  else
    return true
  end
end

def turn(board)
  #until index >= 0 && index < 9
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    if index < 0 || index > 8
      return turn(board) 
    end
  if valid_move?(board, index) == true
    move(board, index, symbol = "X")
    display_board(board)
  else
    puts "That position is already taken"
    return turn(board)
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board,index)
  if !position_taken?(board,index) && index.between?(0,8)
    return true
  end
  return false
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  end
  return true
end

def input_to_index(position)
  position.to_i - 1
end

def move(board,index,character = "X")
  board[index] = character
end

def turn(board)
    puts "Please enter 1-9:"
    position = gets.to_i
    index = input_to_index(position)
    if valid_move?(board,index)
      move(board,index)
      display_board(board)
    else
      turn(board)
    end
end

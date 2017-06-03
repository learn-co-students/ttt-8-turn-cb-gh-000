
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!

def input_to_index(input)
  index = input.to_i
  index = index - 1
end

def move(board, index, player = "X")
      board[index] = player
end

def valid_move?(board,index)
  if position_taken?(board,index) == true
    return false
  elsif index.between?(0,8) && position_taken?(board,index) == false
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input_index =  input_to_index(user_input)

  if valid_move?(board,user_input_index) == true
    move(board,user_input_index)
    display_board(board)
  else
    turn(board)
  end
end
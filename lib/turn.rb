def valid_move?(board, index)
  if !position_taken?(board, index) && (index < 9 && index >=0)
    return true
  end
  return false 
end

def position_taken?(board, index)
   return !(board[index].nil? || board[index] == " ")
end

def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, token = "X")
  board[index] = token
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  user_move = gets.chomp
  user_move = input_to_index(user_move)
  if valid_move?(board, user_move)
    move(board, user_move, "X")
    display_board(board)
  else
    turn(board)
  end
end 
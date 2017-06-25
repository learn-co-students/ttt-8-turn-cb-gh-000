def display_board(board)
  separator = "-----------"
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts separator
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts separator
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index = index.to_i
  index = index - 1
end

def valid_move?(board,index)
  if index.between?(0,8) && position_taken?(board,index)
    true
  else
    false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, x)
  if board[x] == " "
    true
  elsif board[x] == ""
    true
  elsif board[x] == nil
    true
  else
    false
  end
end

def move(board, index, char = "X")
  board[index] = char
end
board = [" "," "," "," "," "," "," "," "," "]
def turn(board)
  puts "Please enter 1-9:"
  pos = gets.strip
  index = input_to_index(pos)

  if valid_move?(board, index)
    move(board,index,"X")

  else
    turn(board)
  end
  display_board(board)

end

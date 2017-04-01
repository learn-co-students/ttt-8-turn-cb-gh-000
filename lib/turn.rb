
# code your #position_taken? method here!
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def display_board(board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index > 8 || index < 0
    false
  else
    !position_taken?(board, index)
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(array, index, value= "X")
  array[index] = value
end

def turn(board)
  currentUser = ["X", "O"]
  countX = 0
  countO = 0
  for i in 1..9
    if board[i-1] == "X"
      countX+=1
    elsif board[i-1] == "O"
      countO+=1
    end
  end
  flag = countX  > countO ? 1 : 0
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  #while true
    if valid_move?(board, index)
      move(board, index, currentUser[flag])
      display_board(board)
      #break
    else
      turn(board)
    end
  #end
end

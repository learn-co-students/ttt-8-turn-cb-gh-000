def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  input_to_index(index)
  until valid_move?(board,petrovich(index))
    puts "Please enter 1-9:"
    index = gets.strip
  end
  move(board,petrovich(index))
  display_board(board)

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if position_taken?(board,index) == true && index > 9 && index < 0
    return false
  elsif position_taken?(board,index) == false && index < 9 && index > -1
    return true
  end
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " ||board[index] == "nil"
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def input_to_index(index)
  index.to_i - 1
end
def petrovich(index)
  index.to_i - 1
end

def move(board, index, current_player = "X")
  board[index] = current_player
end

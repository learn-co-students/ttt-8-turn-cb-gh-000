def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  @index = input - 1
end

def move(board, index, char)
  board[index] = char
end

def valid_move?(board,index)
  if (index <= 8) && (index >= 0) && (position_taken?(board,index) == false)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if (board[index] == "X") || (board[index] == "O")
    return true
  else board[index] == " " || "" || nil
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input_to_index(input)
  if valid_move?(board,@index)
    move(board, @index, char = "X")
  else
    turn(board)
  end
  display_board(board)
end

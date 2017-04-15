def turn(board)
  puts "Please enter 1-9:"
  num = gets.strip
  num = input_to_index(num)
  if valid_move?(board,num)
    move(board,num)
    display_board(board)
  else
    turn(board)
  end
end

def valid_move?(board, index)
  #i = index.to_i
  if index.between?(0, 8) && !position_taken?(board, index)
    return true
  end
end

def position_taken?(board, index)
  board[index] != " " and board[index] != "" and board[index] != nil
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  i=(index.to_i) - 1
end

def move(array, index, value="X")
  array[index] = value
end

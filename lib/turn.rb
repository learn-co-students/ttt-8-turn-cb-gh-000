def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  else
    return false
  end
end

def valid_move?(board, index)
  if  -1 < index && index < 9 && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def input_to_index(index)
  return index.to_i - 1
end

def move(board, index, value)
    board[index] = value
    return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board,index,"X")
  else
    input = gets.strip
    index = input_to_index(input)
    move(board,index,"X")
  end
  display_board(board)
end

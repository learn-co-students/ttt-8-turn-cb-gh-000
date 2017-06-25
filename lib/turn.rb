def display_board(board)
  print " #{board[0]} | #{board[1]} | #{board[2]} \n"
  print "-----------\n"
  print " #{board[3]} | #{board[4]} | #{board[5]} \n"
  print "-----------\n"
  print " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(x)
  return x.to_i-1
end

def move (bArray, bIndex, bChar="X")
  bArray[bIndex] = bChar
end

def valid_move?(board, index)
  if position_taken?(board, index) || (index<0 || index>8)
    return false
  else
    return true
  end
end

def position_taken? (board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn (board)
  puts "Please enter 1-9:"
    userInput = gets.strip
    index = input_to_index(userInput)
  while !(valid_move?(board, index))
    userInput = gets.strip
    index = input_to_index(userInput)
  end
    move(board,index)
    display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  inp = gets.strip
  index = input_to_index(inp)
  if (valid_move?(board,index))
    move(board,index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
    puts "-----------\n"
    puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
    puts "-----------\n"
    puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

def input_to_index(inp)
  index = inp.to_i
  index -= 1
  return index
end

def valid_move?(board,index)
  return (!position_taken?(board,index))&&board[index]&&(index>=0)
end

def position_taken?(board, index)
  return board[index] == "X" || board[index] == "O"
end

def move(board, index, value="X")
    board[index] = value
end
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def valid_move?(board,index)
  if index >=0 && index <=8 && !position_taken?(board,index)
    return true
  else
    return false
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(inp)
  return inp.to_i - 1
end

def move(board,pos,ch = "X")
  board[pos] = ch
end

def turn(board)
  puts "Please enter 1-9:"
  pos = input_to_index(gets.strip)
  if valid_move?(board, pos)
    move(board, pos)
  else
    turn(board)
  end
  display_board(board)
end

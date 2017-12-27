def lines
  puts "-----------"
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  lines
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  lines
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if index.between? 0,8 and not position_taken board,index
    return true
  else
    return false
  end
end

def position_taken(board,index)
  if board[index].strip==""
    return false
  else
    return true
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board,index,token='X')
  board[index]=token
end

def turn(board)
  puts "Please enter 1-9:"
  turn = input_to_index gets.strip.to_i
  if valid_move? board,turn
    move board,turn
    display_board board
  else
    turn board
  end
end

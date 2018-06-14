def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(str)
  num = str.to_i
  num-1
end

def move(board, index, value="X")
  board[index] = value
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
  return false
  elsif(board[index] == "X" || board[index] == "O")
  return true
    end
end

def valid_move?(board, index)
  if(index.between?(0,8) && !position_taken?(board,index))
    return true
  else
    return false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  val = gets.strip
  index  = input_to_index(val)

  if(valid_move?(board,index)==true)
    move(board, index, value="X")
    display_board(board)
  elsif(valid_move?(board,index)==false)
    turn(board)
  end

end

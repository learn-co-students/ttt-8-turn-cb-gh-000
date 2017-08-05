def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n-----------\n #{board[3]} | #{board[4]} | #{board[5]} \n-----------\n #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board,index)
  if board[index]=="X" || board[index]=="O"
    return true
  else
    return false
  end
end

def valid_move?(board,index)
    if index > board.length() || index < 0
      return false
    else
      return !position_taken?(board,index)
    end
end

def move(board,index,player="X")
  board[index]=player
end

def input_to_index(input)
  return input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets.strip)

  if valid_move?(board,index)==false
    puts "Index move not valid."
    turn(board)
  else
    move(board,index)
  end

  display_board(board)
end

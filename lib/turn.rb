def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  index=input_to_index(input)
  if index!=-1
    if valid_move?(board,index)
      move(board,index)
      display_board(board)
    else
      turn(board)
    end
  else
    turn(board)
  end
end
def display_board(board=Array.new)
  puts " #{board[0]} "+"|"+" #{board[1]} "+"|"+" #{board[2]} "
  puts "-----------"
  puts " #{board[3]} "+"|"+" #{board[4]} "+"|"+" #{board[5]} "
  puts "-----------"
  puts " #{board[6]} "+"|"+" #{board[7]} "+"|"+" #{board[8]} "
end
def valid_move?(board,index)
  if index>=0 && index<=8
    if position_taken?(board,index)
      false
    else
      true
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == "X" || board[index] == "O"
    true
  else
    false
  end
end
def move(board,index,value="X")
  board[index]=value
end
def input_to_index(input)
  input=input.to_i
  if input.is_a? Integer
    index=input-1
  else
    -1
  end
end

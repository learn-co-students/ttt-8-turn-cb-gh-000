board=[" "," "," "," "," "," "," "," "," "]

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
  if board[index] == " " && index.between?(0,8)
    true
  else
    false
  end
end

def input_to_index(user_input)
  index=user_input.to_i
  index=index-1
end

def move(board,index,character="X")
  board[index]=character
  board=[ "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" , "#{board[index]}" ]
end

def turn(board)
  puts "Please enter 1-9:"
  user_input=gets.strip
  index=input_to_index(user_input)
  if index.between?(0,8) && valid_move?(board,index)
    move(board,index,character="X")
    display_board(board)
  else
    turn(board)
  end
end

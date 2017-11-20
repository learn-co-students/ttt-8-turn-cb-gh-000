def display_board(board)
puts(" #{board[0]} | #{board[0]}  | #{board[0]} ")
puts("-----------")
puts(" #{board[0]} | #{board[0]}  | #{board[0]} ")
puts("-----------")
puts(" #{board[0]} | #{board[0]}  | #{board[0]} ")
end

def input_to_index(user_input)
if (user_input.class == strings)
puts "-1"
else
user_input.to_i-1
end
end

def valid_move?(board,index)
if ((index+1).between?(1,9) == false || position_taken?(board,index))
  nil
elsif (position_taken?(board,index)==false)
  true
end
end

def position_taken?(board,index)
if(board[index] == " " || board[index] == "" || board[index] == nil)
false
else
  true
end
end

def move (board,index,char='X')
  board[index]=char
end

def turn (board)
puts "Please enter 1-9:"
input=gets.strip
input_to_index(input)
if valid_move?(board,input)
  move(board,input,char)
else
puts "Please enter 1-9:"
end
display_board(board)
end

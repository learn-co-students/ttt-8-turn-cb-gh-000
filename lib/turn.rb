def display_board(board)
puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
puts("-----------")
puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
puts("-----------")
puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(user_input)

user_input.to_i-1
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
input1=input_to_index(input)
if valid_move?(board,input1)
move(board,input1,"X")
display_board(board)
else
input=gets.strip
end
end

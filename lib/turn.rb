def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts  "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
def input_to_index(input)

  input = input.to_i
  input-=1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  answer = valid_move?(board,input)
  if answer
    move(board,input)
    display_board(board)
  else turn(board)
  end

end





def valid_move?(board,index)
  if index >=0 && index<=8 && board[index]!= "X" && board[index]!= "O"
    answer = true;
  else answer = false
  end
  answer
end

def move(board,index,token="X")
  board[index]=token
end

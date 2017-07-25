def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index=input.to_i
  index=index-1
end

def valid_move?(board, index)
  if (index>=0 && index <=8 && board[index]==" ")
    return true
  end
end

def move(board,index,player_char="X")
  board[index]=player_char
end

def turn(board)
  puts "Please enter 1-9:"
  num=gets.strip
  input_to_index(num)
  index=num.to_i
  index=index-1
  while !(valid_move?(board, index))
    puts "Please enter 1-9:"
    num=gets.strip
    input_to_index(num)
    index=num.to_i
    index=index-1
  end
  move(board,index,player_char="X")
  display_board(board)
end

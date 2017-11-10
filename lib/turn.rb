def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-"*11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-"*11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board,index)
  index.between?(0,8) && position_taken?(board,index)
end

def position_taken?(board,index)
  if(board[index] == "" || board[index] == " " || board[index] == nil)
    true
  elsif (board[index] == "X" || board[index] == "O")
    false
  end
end

def move(board,index,mark="X")
  board[index] = mark
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board,index)==true
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
  move(board,index)
  display_board(board)
end

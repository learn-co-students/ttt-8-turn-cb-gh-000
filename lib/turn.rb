def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  index >= 0 && index <= 8 && !position_taken?(board, index)
end

def position_taken?(board, index)
  char_in_pos = board[index]
  !(char_in_pos == " " || char_in_pos == "" || char_in_pos == nil)
end

def move(board, index, character = "X")
  if valid_move?(board,index)
    board[index] = character
  else
    false
  end
end

def input_to_index(pos)
  pos.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  if !move(board, input_to_index(input))
    turn(board)
  end
  display_board(board)
end

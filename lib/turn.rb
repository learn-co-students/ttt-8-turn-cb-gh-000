def valid_move?(board,index)
  if index<9 && index >= 0 && !position_taken?(board,index)
    return true
  else
    return nil
  end
end


def position_taken?(board,index)
  return board[index] == "X" || board[index] == "O"
end

def display_board(board)
 line = "-----------"
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts line
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts line
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board,index,character = "X")
  board[index] = character
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
end

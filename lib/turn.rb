def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board,index,character='X')
  board[index] = character
end


def valid_move?(board,index)
  if index < 0 || index > 8
    false
  elsif board[index] == "" || board[index] == " " || board[index] == nil
    true
  elsif board[index] == 'X' || board[index] == 'O'
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  while valid_move?(board,index) == false
    input = gets.chomp
    index = input_to_index(input)
  end
  move(board,index)
  display_board(board)
end

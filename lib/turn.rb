def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  until valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index, 'X')
  display_board(board)
end

# Helper Methods

def valid_move?(board, index)
  return (index.between?(0,8) && !position_taken?(board, index))
end  

def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil )
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  return input.to_i - 1
end  

def move(board, index, character = "X")
  board[index] = character
  return board
end
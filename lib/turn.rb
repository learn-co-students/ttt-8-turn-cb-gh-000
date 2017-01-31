
def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board, index)
  return !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def valid_move?(board, index)
  if index.between?(0, 8)
  return !position_taken?(board, index)
  end
end

def move(board, index, player_character = "X")
    board[index] = player_character
    return board
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  index  = input_to_index(gets.strip)
  until valid_move?(board, index)
    puts "Invalid move!"
    puts "Please enter 1-9:"
    index  = input_to_index(gets.strip)
  end
  move(board, index)
  display_board(board)
end

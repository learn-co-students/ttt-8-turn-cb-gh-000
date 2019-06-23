


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} " 
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if index.between?(0, board.length-1) && (board[index] == "" || board[index] == " " || board[index] == nil)
    return true
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
  index
end

def move(board, index, marker="X")
    board[index] = marker
    return board
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  loop do
    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
      break
    else
      input = gets.strip
      index = input_to_index(input)
    end
  end
end
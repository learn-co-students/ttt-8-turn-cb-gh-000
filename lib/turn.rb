def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end


def position_taken?(board, index)
  return ["X", "O"].include?(board[index])
end

def valid_move?(board, index)
  if (board.size-1) < index || index < 0
    return false
  elsif !position_taken?(board, index)
    return true
  end
end

def move(board, index, value="X")
  board[index] = value
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.chomp.to_i
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      break
    end
  end
end

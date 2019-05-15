def turn(board)
  loop do

    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)

    if valid_move?(board, index)
      move(board, index)
      break
    end

  end

  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, position)
  if position < 0 || position > 8
    return false
  else
    return !position_taken?(board, position)
  end
end

def position_taken?(board, position)
  return board[position] == "X" || board[position] == "O"
end

def move(board, position, piece = "X")
    board[position] = piece
end

def input_to_index(input)
  return input.to_i - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
end


def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end


def valid_move?(board, index)
  if index <= 8 && index >= 0 && !position_taken?(board, index)
      true
  else
      false
  end
end

def move(board, index, value="X")
  if valid_move?(board, index)
    board[index] = value
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  while valid_move?(board, index)


    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else
      break
    end
  end
end

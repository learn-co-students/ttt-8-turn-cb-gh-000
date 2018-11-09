def turn(board)
  display_board(board)
  moved = false
  while moved == false
  puts "Please enter 1-9:"
  input = gets.strip

  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
    moved = true
  else
    puts "Invalid input, try again: "
  end
end
end


def move(board, index, ch = "X")
  board[index.to_i] = ch
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end


def input_to_index(input)
  return input.to_i() - 1
end


def valid_move?(board, index)
  if !position_taken?(board, index) && index >= 0 && index <= 8
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

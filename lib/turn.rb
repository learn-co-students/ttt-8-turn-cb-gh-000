def valid_move?(board, index)
  if index.between?(0, 8) and (board[index] == nil or board[index] == " " or board[index] == "")
    return true
  end
  return false
end

def position_taken?(board, index)
  if valid_move?(board, index)
    return true
  else
    return false
  end
end

def turn(board)
  input = -1
  while true
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    if input != -1 and valid_move?(board, input)
      break
    end
  end
  move(board, input, "X")
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  begin
    input = input.to_i - 1
  rescue
    input = -1
  end
  return input
end

def move(board, input, pl="X")
  board[input] = pl
  display_board(board)
end

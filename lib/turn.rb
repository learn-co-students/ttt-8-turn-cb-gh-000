def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  if !index.between?(0,8)
    nil
  elsif !position_taken?(board, index)
    true
  elsif position_taken?(board, index)
    false
  end
end

def position_taken?(board, index)
  if board[index] == " "
    false
  elsif board[index] == ""
    false
  elsif board[index] == nil
    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end

def move(board, index, char)
  if valid_move?(board, index)
    board[index] = char
  end
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    index = input_to_index(gets)
    if !valid_move?(board, index)
      next
    else
      move(board, index, "X")
      break
    end
  end

  display_board(board)
end
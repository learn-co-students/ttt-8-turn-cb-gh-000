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

def valid_move?(board,index)
  if board[index] == "X" || board[index] == "O" || !index.between?(0, 8)
    return false
  else
    return true
  end
end

def move(board, position, value = "X")
    board[position] = value
end

def turn(board)
  puts "Please enter 1-9:"
  entry = input_to_index(gets.chomp)
  if entry.between?(0, 8) && valid_move?(board, entry)
    move(board, entry)
  else
    turn(board)
  end
  display_board(board)
end

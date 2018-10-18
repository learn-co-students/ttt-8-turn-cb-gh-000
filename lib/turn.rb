

def display_board(input)
    puts " #{input[0]} ""|"" #{input[1]} ""|"" #{input[2]} "
    puts "-----------"
    puts " #{input[3]} ""|"" #{input[4]} ""|"" #{input[5]} "
    puts "-----------"
    puts " #{input[6]} ""|"" #{input[7]} ""|"" #{input[8]} "
end

def input_to_index(input)
  int = input.to_i
  index = int - 1
  return index
end

def valid_move?(board, index)
  int = index.to_i
  if int.between?(0, 8) && position_taken?(board, index) == false
    return true
  else
    return false
  end
end

def move(board, index, char = "X")
    board[index] = char
end

def position_taken?(board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

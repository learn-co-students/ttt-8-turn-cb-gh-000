def display_board(i)
  puts " #{i[0]} | #{i[1]} | #{i[2]} "
  puts "-----------"
  puts " #{i[3]} | #{i[4]} | #{i[5]} "
  puts "-----------"
  puts " #{i[6]} | #{i[7]} | #{i[8]} "
end

def input_to_index(i)
  i = i.to_i - 1
end

def valid_move?(board, i)
  if i >= 0 && i <9 && !position_taken?(board, i)
    return true
  else
    return false
  end
end

def position_taken?(board, p)
  if board[p] == "X" || board[p] == "O"
    return true
  end
  if board[p] == " " || board[p] == "" || board[p] == nil
    return false
  end
end

def move(board, index, value = "X")
  board[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index, "X")
  display_board(board)
end

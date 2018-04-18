def display_board (board = Array.new(n*n, " "), n = 3) # width = heighh of square board
  result = Array.new
  n.times do |i|
    temp = Array.new
    n.times do |j|
      temp << " " + board[n*i + j] + " "
    end
    result << temp.join("|") + "\n"
    temp.clear
  end
  puts result.join("-"*11+"\n")
end

def input_to_index(input)
  return index = input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 && !position_taken?(board, index)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, token = "X")
  board[index] = token
  board
end

def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  until valid_move?(board, index)
    puts "Please enter 1-9:"

    input = gets.strip
    index = input_to_index(input)
  end

  move(board, index)
  display_board(board)

end

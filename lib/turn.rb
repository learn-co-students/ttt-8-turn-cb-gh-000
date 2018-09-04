def display_board(state)
  puts " #{state[0]} | #{state[1]} | #{state[2]} "
  puts "-----------"
  puts " #{state[3]} | #{state[4]} | #{state[5]} "
  puts "-----------"
  puts " #{state[6]} | #{state[7]} | #{state[8]} "
end

def valid_move?(board, index)
  if (index >= 0 && index <= 8) && !position_taken?(board, index)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end

def input_to_index(input)
  input = input.to_i - 1
end

def move(board, index, token = 'X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  counter = 0
  until counter == 1
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      counter += 1
    else
    print "Invalid input, enter correct input: "
    index = gets.strip
    index = input_to_index(index)
    end
  end
end

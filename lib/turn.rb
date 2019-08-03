def position_taken?(board, index)
  return board[index] != " "
end

def input_to_index(input)
  return input.to_i - 1
  end

def valid_move?(board, index)
  return index.between?(0, 8) && !position_taken?(board, index)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(array, index, value="X")
  array[index] = value
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  # get input
  # convert input to index
  input = input_to_index(gets.strip().to_i())
  if valid_move?(board, input)
    move(board, input)
  else
    while !valid_move?(board, input)
      puts "Please enter 1-9:"
      input = gets.strip().to_i()
    end
  end
  display_board(board)
end

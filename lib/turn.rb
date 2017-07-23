def turn(board)
  display_board(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    puts "Please enter a valid move"
    until valid_move?(board, input_to_index(gets.strip))
      puts "Please enter a valid move"
    end
    move(board, index)
    display_board(board)
  end
end

def display_board(array)
  separator = "-----------"
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts separator
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts separator
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  elsif index.between?(0,8)
    true
  else
    false
  end
end

def position_taken?(board, index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end

def move(board, position, char="X")
  board[position] = char
end

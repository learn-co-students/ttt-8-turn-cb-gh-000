#code to display the board.
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} \n"
  puts "-----------\n"
  puts " #{board[3]} | #{board[4]} | #{board[5]} \n"
  puts "-----------\n"
  puts " #{board[6]} | #{board[7]} | #{board[8]} \n"
end

#code for position_taken
def position_taken?(board, index)
  if board[index] == "" or board[index] == " " or board[index] == nil
    false
  else true
  end
end

# code your #valid_move? method here
def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    true
  else
    false
  end
end

# code for position_taken
def position_taken?(board, index)
  if board[index] == "" or board[index] == " " or board[index] == nil
#Esto es falso aqui asi que tiene que evaluarse falso en el codigo de abajo, notetoself.
    false

  else true
  end
end

# code your input_to_index and move method here!
def input_to_index(input)
  return input.to_i - 1
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if(valid_move?(board, input))
      move(board, input)
      display_board(board)
      break
    end
  end
end

def display_board(board)
  puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts("-----------")
  puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts("-----------")
  puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  if index >= 0 && index <= 8
    value = board[index]
    if value == "" || value == " " || value == nil
      true
    end
  else
    false
  end
end

def move(board, index, token='X')
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index)
  else
    puts "Enter a valid move"
    turn(board)
  end
  display_board(board)
end

def play(board)
  i=0
  while i<9
    turn(board)
    i+=1
  end
end

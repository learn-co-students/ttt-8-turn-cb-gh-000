def introduction
  puts "Welcome to Tic Tac Toe!"
end

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.strip.to_i - 1
end

def valid_move?(board, index)

  if 0 <= index && index < 9 then
    if board[index] == " "
      return true
    end
  end
end

  false

def move(board, index, mark="X")

  if valid_move?(board, index) then
    board[index] = mark
  end
end

def turn(board)

  index = -1

  until 0 <= index && index < 9 do

    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)

  end

  move(board, index)
  display_board(board)
end

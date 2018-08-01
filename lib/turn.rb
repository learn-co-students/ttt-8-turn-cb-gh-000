include Comparable

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end

def input_to_index(position)

  position.to_i - 1

end

def valid_move?(board, index)

  if index.between?(0,8)then

    if board[index] == "X" || board[index] == "O" then
      false
    else
      true
    end

  else
    false
  end

end

def move(board, index, symbol = "X")

  board[index] = symbol

end

def turn(board)

    puts "Please enter 1-9:"
    position = gets.strip
    index = input_to_index(position)

    if valid_move?(board, index)
      move(board, index, "X")
      display_board(board)
    else
      turn(board)
    end

end

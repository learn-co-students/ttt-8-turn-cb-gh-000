#!/usr/bin/env ruby
def input_to_index(input)
  return input.to_i - 1
end

def position_taken?(board, index)
  return !(board[index] == " ")
end

def valid_move?(board, index)
  if index.between?(0, 8)
    return !position_taken?(board, index)
  else
    return false
  end
end

def move(board, converted_input, character = "X")
  board[converted_input] = character
  return board
end

def one_line(array_name, index_1, index_2, index_3)
  puts " #{array_name[index_1]} | #{array_name[index_2]} | #{array_name[index_3]} "
end

def dash_line
  puts "-----------"
end

def display_board(board)
  one_line(board, 0, 1, 2)
  dash_line
  one_line(board, 3, 4, 5)
  dash_line
  one_line(board, 6, 7, 8)
end


def turn(board)
  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end

end

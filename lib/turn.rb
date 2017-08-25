def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  elsif (board[index] == "X" || board[index] == "O")
    return true
  else
    return nil
  end
end


def valid_move?(board, index)
  if position_taken?(board, index) == false && index.between?(0,8)
    return true
  else
    return false
end
end

numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9"]
def input_to_index(numbers)
  numbers = "#{numbers}".to_i - 1
end

def move(board_array, index, char="X")
  board_array[index] = "#{char}"
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index) == true
    move(board, index, char="X")
    display_board(board)
  else
    return turn(board)
  end
end

def display_board(board)
  rows = [' ', ' ', ' ']
  rows[0] = " #{board[0]} | #{board[1]} | #{board[2]} "
  rows[1] = " #{board[3]} | #{board[4]} | #{board[5]} "
  rows[2] = " #{board[6]} | #{board[7]} | #{board[8]} "
  dash = "-----------"
  puts "#{rows[0]}\n" + "#{dash}\n" + "#{rows[1]}\n" + "#{dash}\n" + "#{rows[2]}\n"
end

def valid_move?(board, index)
  if board[index] == " " && (index == 0 || index == 1 || index == 2 || index == 3 || index == 4 || index == 5 || index == 6 || index == 7 || index == 8)
    return true
  else
    return false
  end
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
  return user_input
end

def move(array, index, value="X")
  array[index] = value
  return array
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.to_i - 1
  input_to_index(user_input)
  if valid_move?(board, user_input) == false
    puts "Please enter a valid input:"
    turn(board)
  else
    move(board, user_input,value="X")
    display_board(board)
  end
end

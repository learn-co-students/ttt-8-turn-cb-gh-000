# define method display_board that is show state of board

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# ------------------------------------------------------------------------------

def input_to_index(user_input)
  valid = user_input.to_i
  return valid - 1
end

# ------------------------------------------------------------------------------

def valid_move?(board,index)
  if (index >= 0 && index < 9)
    if (board[index] == " ")
      return true
    else
      return false
    end
  else
    return false
  end
end

# ------------------------------------------------------------------------------

def move(board,index,char = "X")
  board[index] = char
end

# ------------------------------------------------------------------------------
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  valid = input_to_index(input)
  if(!valid_move?(board,valid))
    puts "Please enter 1-9:"
    input = gets.strip
    valid = input_to_index(input)
else
  move(board,valid)
  display_board(board)
end
end

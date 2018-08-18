def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your #valid_move? method here
def valid_move?(board, position)
  if position < 0 or position > 8
    return false
  else
    return !position_taken?(board, position)
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, position)
  if board[position] == " " || board[position] == "" || board[position] == nil
    return false
  end
  return true
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
    return true
  end
  return false
end

def input_to_index(user_input)
  if user_input != "0" && user_input.to_i == 0
    return -1
  end
  user_input = user_input.to_i
  user_input -= 1
  return user_input
end
def turn(board)
  pass = false
  until pass
    puts "Please enter 1-9:"
    ui = input_to_index(gets.strip)
    if ui != -1
      pass = move(board, ui)
    end
  end
  display_board(board)
end

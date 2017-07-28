def turn(board)
  puts "Please enter 1-9:"
  usr_input = gets.strip
  alt_input = input_to_index(usr_input)
  if valid_move?(board, alt_input)
    move(board,alt_input, "X")

  else
    turn(board)
  end
display_board(board)
end



# sets the TTT box equal to token, either X or O
def move(board, index, token = "X")
  board[index] = token
end


# code your #valid_move? method here
def valid_move?(board, index)
  if(index >= 0 ) && (index <= 8)
    if position_taken?(board, index)
      return false
    else
      return true
    end
  else
    return false
  end
end



# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if (board[index] == " ") || (board[index] == "")
    return false
  elsif board[index] == nil
    return false
  else
    return true
  end

  #if (board[index - 1] == "X" || board[index - 1] == "O")
  #  return true
  #end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input = user_input - 1
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
def valid_move?(board, index)
    if position_taken?(board, index)
      true
    else
      false
    end
end

def position_taken?(board, index)
    if (board[index] == "" || board[index] == " ") && index.between?(0,8)
      true
    elsif board[index] == "X" || board[index] == "O"
      false
    elsif board[index] == nil
      false
    end
end

def turn(board)
  puts "Please enter 1-9:"
  count = 0
  while count == 0
    user_input = gets.strip
    user_input = input_to_index(user_input)
    if user_input.between?(0,8)
      move(board, user_input, "X")
      display_board(board)
      break
    else
      puts "Pleas enter a Valid number between 1-9"
    end
  end
end

def move(board, index, value)
  if valid_move?(board, index)
    board[index] = value
  else
    turn(board)
  end
end

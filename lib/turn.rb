def turn(board)
  puts "Please enter 1-9:"
  user_choice = gets.strip
  converted_index = input_to_index(user_choice)

  if(valid_move?(board, converted_index))
    turn_value = get_turn(board)
    move(board, converted_index, turn_value)
  else
    puts "Sorry, invalid move!"
    turn(board)
  end

  display_board(board)
end

def input_to_index(user_choice)
  index = (user_choice.to_i) - 1
end

def display_board(board)
  row_first  = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_second = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_third  = " #{board[6]} | #{board[7]} | #{board[8]} "
  border = "-----------"

  puts row_first
  puts border
  puts row_second
  puts border
  puts row_third
  puts " "
end

def valid_move?(board, index)
  if(!position_taken?(board, index)) ## Is position taken?
    if(index < 9 and index >= 0) ## Is position valid? (between 0 and 8)
      return true
    end
  end
  false
end

def position_taken?(board, index)
  if(board[index] == "X" || board[index] == "O")
    return true
  end
  false
end

def get_turn(board)
  moves = 0
  count = 0

  9.times do
    if(board[count] == "X" || board[count] == "O")
      moves += 1
    end
    count += 1
  end

  if(moves % 2 == 0)
    return "X"
  else
    return "O"
  end
end

def move(board, index, turn_type)
  board[index] = turn_type
end

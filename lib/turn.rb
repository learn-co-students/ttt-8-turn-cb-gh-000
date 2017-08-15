def input_prompt
  puts "Please enter 1-9:"
  return input = gets.strip
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, move, char = "X")
  board[move] = char
end

def position_taken? (board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
    return true
  end
end

def valid_move? (board, move)
  if (move >= 0 && move <= 8 && !position_taken?(board, move))
    return true
  else
    return false
  end
end

def turn(board)
  flag = false
  while flag != true
    index = input_to_index(input_prompt)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      flag = true
    else
      puts "No valid input. Please try again."
    end
  end
end

def display_board(board)
 puts " #{board[0]} | #{board[1]} | #{board[2]} "
 puts "-----------"
 puts " #{board[3]} | #{board[4]} | #{board[5]} "
 puts "-----------"
 puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = (input.to_i)

  if index < 1 || index > 9
    index = 0
  end
  index = index - 1
  return index

end

def valid_move?(board, index)
  if index > -1 && index < 9
    if board[index] != "X" && board[index] != "O"
      return true
    else
      return false
    end
  else
    return false
  end
end

def move(board, input, char)
    board[input] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !valid_move?(board, index)
    turn(board)
  else
    move(board, index, "X")
  end
  display_board(board)
end

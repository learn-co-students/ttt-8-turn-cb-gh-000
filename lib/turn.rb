def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = input_to_index(gets)
    if move(board, input)
      display_board(board)
      break
    else
      puts "Cant go there"
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index (input)
  index = input.to_i
  Integer(input)
  return index - 1
  rescue ArgumentError
    return -1
end


def position_taken? (board, index)
  space = board[index]
  if space == NIL
    return false
  elsif space.strip == ""
    return false
   else
     return TRUE
   end
 end

def valid_move? (board, index)
  if !position_taken?(board, index) && index >= 0 && index <= 8
    return TRUE
  else
    return false
  end
end

def move(board, index, player = "X")
  if valid_move?(board, index)
    board[index] = "#{player}"
    return true
  else
    return false
  end
end
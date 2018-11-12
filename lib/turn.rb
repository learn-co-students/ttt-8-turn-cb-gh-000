def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  return input.to_i - 1
end

def valid_move?(board, index)
    if (index < 0 || index - 1 > board.length)
        return false
    end

    return (position_taken?(board, index) == false)
end

def position_taken?(board, index)
    pos = board[index]
  if (pos == ' ' || pos == '' || pos == nil)
      return false
  else
    return true
end
end

def move(board, index, character = "X")
  update_array_at_with(board, index, character)
end

def update_array_at_with(array, index, value)
  array[index] = value
end

def turn(board)
    puts "Please enter 1-9:"
    input = gets
    valid = false
    index = input_to_index(input)
    if (valid_move?(board, index))
        move(board, index, 'X')
        display_board(board)
    else
        turn(board)
    end
end

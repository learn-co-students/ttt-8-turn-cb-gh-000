def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)

  if valid_move?(board, index)
    move(board, index)
  else
    while true
      puts "Please enter 1-9:"
      input = gets.strip
      index = input_to_index(input)

      if index >= 1 || index <= 9
        break
      end  
    end
  end

  display_board(board)
end

# code your #valid_move? method here
def valid_move?(board, index)
  potential_move = board[index]

  if position_taken?(board, index) || index < 0 || index > 8
    return false
  end

  return true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  element = board[index]

  if element.nil? || board[index].strip == ""
    return false
  end

  return true
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(move_cell)
  x = move_cell.to_i
  if x > 0
    return move_cell.to_i - 1
  elsif x == 0
    return -1
  else
    return 0
  end
end

def move(board, index, player = "X")
  board[index] = "#{player}"
  return board
end
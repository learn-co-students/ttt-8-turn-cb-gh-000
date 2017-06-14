# code your #valid_move? method here
def valid_move?(board,index)
  index > -1 and index < 9 and !(position_taken?(board,index))
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  board[index] != "" and board[index] != " " and board[index] != nil
end

# Define display_board that accepts a board and prints
# out the current state.

def display_board(board)
  board.each_with_index { |e, i|
    if i % 3 != 2
      print " #{e} |"
    else
      puts " #{e} "
      puts "-----------"
    end
  }
end

def move(board, index, value="X")
  board[index] = value
end

def input_to_index(index)
  return index.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip.to_i)
  until index.between?(0,8) and valid_move?(board, index)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip.to_i)
  end
  move(board, index)
  display_board(board)
end

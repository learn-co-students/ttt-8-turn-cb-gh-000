def display_board(board)
  for row in 0..2
    for col in 0..1
      print " #{board[row * 3 + col]} |"
    end
    puts " #{board[row * 3 + 2]} "
    if row < 2
      puts "-----------"
    end
  end
end

# code your input_to_index and move method here!
def input_to_index(user_input)
  (user_input.to_i) - 1
end

def move(board, pos, char="X")
  board[pos] = char
end

def valid_move?(board, index)
  index_valid = index >= 0 && index < board.length
  !board.empty? && index_valid && !position_taken?(board, index)
end

def position_taken?(board, index)
  !board.empty? && board[index] != nil && board[index].strip != ""
end

def turn(board)
  index = nil
  while !index || !valid_move?(board, index) do
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
  end
    move(board, index)
    display_board(board)
end

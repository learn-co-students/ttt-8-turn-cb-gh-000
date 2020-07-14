def turn(board)
  index = nil
  until index.class == Fixnum
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    index = valid_move?(board, index) && index
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  temp = board.map { |e| " #{e} " }
          .each_slice(3)
          .map { |e| e.join("|") }
          .join("\n-----------\n")
  puts temp
end

def move(board, index, ch = "X")
  board[index] = ch
end

def input_to_index(input)
  input.to_i - 1
end

def valid_move?(board, index)
  !!(index && index>=0 && index <9 && position_taken?(board, index))
end

def position_taken?(board, index)
  temp = board[index]
  !!(temp && index && [" ", ""].include?(temp))
end

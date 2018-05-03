def display_board(state)
  puts " #{state[0]} | #{state[1]} | #{state[2]} "
  puts "-----------"
  puts " #{state[3]} | #{state[4]} | #{state[5]} "
  puts "-----------"
  puts " #{state[6]} | #{state[7]} | #{state[8]} "
end

def valid_move?(board, index)
  ( index < 9 && index >= 0 && ! (position_taken?(board, index)))
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, index, value = "X")
  def update_array_at_with(array, index, value)
    array[index] = value
  end
  update_array_at_with(board, index, value)
end

def position_taken?(board, index)
  ! (board[index] == "" || board[index] == " " || board[index] == nil)
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      break
    end
  end
  display_board(board)
end

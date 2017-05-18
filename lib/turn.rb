def display_board (board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board_array, index)
  index.between?(0, 8) && !position_taken?(board_array, index)
end

def position_taken? (board_array, index)
  is_free = board_array[index] == " " || board_array[index] == "" || board_array[index] == nil
  !is_free
end

def input_to_index (input)
  input.to_i - 1
end

def move (board_array, index_to_fill, character = "X")
  board_array[index_to_fill] = character
end

def turn (board)
  loop do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index, "X")
      break
    end
  end
  display_board(board)
end

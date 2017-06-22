
def display_board board
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index input
  input.to_i - 1
end

def move board, index, player = 'X'
  board[index] = player
end

def position_taken? board, index
  !board[index].nil? && board[index].strip != ''
end

def valid_move? board, index
  (0...board.size).include?(index) && !position_taken?(board, index)
end

def turn board, player = 'X'
  valid = false
  until valid
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index input
    valid = valid_move? board, index
  end
  move board, index, player
  display_board board
end

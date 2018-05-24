def display_board (board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index (input)
  index = input.to_i - 1
end

def move (array, index, value="X")
  array[index] = value
end
def position_taken? (array, index)
  array[index] != " "
end

def valid_move? (array, index)
  index.between?(0,8)  && !(position_taken?(array, index))
end

def turn(board)
    puts "Please enter 1-9:"
    answer = gets.chomp
    answer = input_to_index(answer)
    if valid_move?(board, answer)
      move(board, answer)
      puts display_board(board)
    else
      puts "That is an invalid entry!"
      turn(board)
    end
end

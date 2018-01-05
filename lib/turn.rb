def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  if board[index] != " " || index < 0 || index > 9
    false
  else
    true
  end
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  if valid_move?(board, input_to_index(index))
    move(board, input_to_index(index))
  else
    until valid_move?(board, input_to_index(index))
        puts "Please enter 1-9: "
        index = gets.strip
    end
    move(board, input_to_index(index))
  end
  display_board(board)
end


def input_to_index(index)
  index.to_i - 1
end

def move(board, index, token = "X")
  if valid_move?(board, index)
    board[index] = token
  end
end

def display_board(board)
  i = 0
  3.times do
    print " #{board[i]} | #{board[i+1]} | #{board[i+2]} "
    print "\n"

    i+=3
    if i < 9
      11.times do
        print "-"
      end
    end
    print "\n"
  end
end


def input_to_index(index)
  index.to_i - 1
end

def valid_move?(board, index)
  if !position_taken?(board, index) && index.between?(0, 8)
    return true
  else
    return false
  end
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  else
    return true
  end
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  io = gets.strip
  index = input_to_index(io)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

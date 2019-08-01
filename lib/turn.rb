def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  if index.to_i.to_s == index
    index = index.to_i
    index = index - 1
  else
    index = -1
  end
end

def valid_move?(board, index)
  if position_taken?(board, index)
    false
  else
    if index > 9 || index < 0
      false
    else
      true
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    false
  else
    true
  end
end

def move(board, index, value="X")
  board[index]=value
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    while !valid_move?(board, index)
      puts "Please enter 1-9:"
      index = gets.strip
      index = input_to_index(index)
    end
    move(board, index)
    display_board(board)
  end
end

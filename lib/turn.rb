def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = (input.to_i) - 1
end

def move(board,position,char="X")
  board[position] = char
end

def turn(board)
  while true
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board,index)
      move(board,index)
      display_board(board)
      break
    end
  end
end

# code your #valid_move? method here
def valid_move?(board,index)
  if position_taken?(board,index)
    false
  else
    if index.between?(0,board.size-1)
      true
    else
      false
    end
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      false
    else
      true
    end
end

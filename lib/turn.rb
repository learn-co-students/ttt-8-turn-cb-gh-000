def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  canMove = false
  until canMove == true do
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    canMove = valid_move?(board, index)
  end
  move(board, index)
end

# code your input_to_index and move method here!
def input_to_index(input)
  input = input.to_i
  input - 1
end

def move(board, index, chara = "X")
  board[index] = chara
  display_board(board)
end

def valid_move?(board,index)
  if index >= 0 && index <= 8
    if position_taken?(board,index)
      true
    else
      false
    end
  else
    false
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    true
  else
    false
  end
end

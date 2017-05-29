def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input = user_input.to_i
  user_input - 1
end

def move(array, index, value="X")
  array[index] = value
end

def valid_move?(board,index)
  def position_taken?(board, index)
    if board[index] == "" || board[index] == " " || board[index] == nil
      false
    else
      true
    end
  end

  if index >= 0 && index <= 8
    if position_taken?(board, index)
      false
    else
      true
    end
  else
    false
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  input = input_to_index(input)
  if valid_move?(board,input)
    move(board,input)
    display_board(board)
  else
    turn(board)
  end
end

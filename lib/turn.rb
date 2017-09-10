#display_board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

#input_to_index
def input_to_index(input)
  input = input.to_i
  input = input - 1
end

#check if position is taken or not
def position_taken?(board,index)
  if board[index] == " " || board[index] == ""
    return false

  elsif board[index] == nil
    return false

  elsif board[index] == 'X' || board[index] == 'x' || board[index] == 'O' || board[index] == 'o'
    return true

  end
end

#using the position_taken method check if the move is vali or not
def valid_move?(board,index)
  if index >= 0 && index <= 8
    if position_taken?(board,index) == false
      return true
    else
      return false
    end
  else
    return false
  end
end

#move method
def move(board,index,value="X")
  board[index] = value

  display_board(board)
end

#turn method
def turn(board)

  puts "Please enter 1-9:"

  index = gets.strip

  index = input_to_index(index)

  if valid_move?(board,index) == true
    move(board,index,value="X")
  else
    turn(board)
  end
end

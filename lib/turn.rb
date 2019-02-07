def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  index = user_input.to_i-1
  return index
end
def valid_move?(board, index)
  def position_taken?(array, location)
    if array[location] == " " || array[location] == "" || array[location] == nil
      return false
    else
      return true
    end
  end
  def board_number?(number)
    if number >= 0 && number <=8
      return true
    else
      return false
    end
  end
  if (position_taken?(board, index) == false && board_number?(index) == true)
    return true
  else
    return false
  end
end
def move(board, index, code="X")
  board[index] = code
  return board
end
def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.chomp
  index = input_to_index(user_input)
  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
 end

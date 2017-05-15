
def turn(board)
  #ask for user input
  input = get_input
  if valid_move?(board,input) == true
    move(board,input)
    display_board(board)
  else
    input = get_input
    valid_move?(board,input)
  end
end


def get_input
  puts "Please enter 1-9:"
  input = gets.strip
  return input_to_index(input)
end
  
#### `#display_board`
def display_board(board)
  row_one = " #{board[0]} | #{board[1]} | #{board[2]} "
  row_two = " #{board[3]} | #{board[4]} | #{board[5]} "
  row_three = " #{board[6]} | #{board[7]} | #{board[8]} "
  line = "-----------"
  puts row_one
  puts line
  puts row_two
  puts line
  puts row_three
end
##Valid move
def valid_move?(board,index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end

end

def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
     return false
  end
  if board[index] == "X" or board[index] == "O"
    return true
  end
end

#### `#move`
def move(board, input, value="X")
  board[input] = value
end

def input_to_index(input = -1)
  index = input.to_i - 1
end

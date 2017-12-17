## Display board
def display_board (board)
  breakline = "-----------"

    puts " #{board[0] } | #{board[1]} | #{board[2] } "
    puts breakline
    puts " #{board[3] } | #{board[4]} | #{board[5] } "
    puts breakline
    puts " #{board[6] } | #{board[7]} | #{board[8] } "
    puts breakline

end

def input_to_index(input)
  input.to_i  - 1
end

def valid_move?(board, index)
 index >= 0 && index <=8 && !position_taken?(board, index)
end

def position_taken?(board, index)
  !(board[index] == " " || board[index] == "" || board[index] == nil)
end

def move(board, index, token = "X")
  board[index] = token
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets
  index = input_to_index(input)

  if valid_move?(board,index)
     move(board,index)
     display_board(board)
  else
    turn(board)
  end
end

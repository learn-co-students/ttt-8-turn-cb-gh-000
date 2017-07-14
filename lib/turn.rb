def display_board(b)
  row =[" #{b[0]} | #{b[1]} | #{b[2]} ", " #{b[3]} | #{b[4]} | #{b[5]} ", " #{b[6]} | #{b[7]} | #{b[8]} "]
  puts row[0]
  puts "-----------"
  puts row[1]
  puts "-----------"
  puts row[2]
end

def position_taken?(board, index)
  board[index] == " "
end
def input_to_index(id)
  id.to_i - 1
end

def move(board, position, user="X")
  board[position] = user
end

def valid_move?(board, index)
  position_taken?(board, index) && index.between?(0, 8)
end
def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if(valid_move?(board,index))
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

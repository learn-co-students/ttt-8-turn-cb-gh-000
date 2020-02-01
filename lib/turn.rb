def display_board(state=[" "," "," "," "," "," "," "," "," "])
  puts " #{state[0]} | #{state[1]} | #{state[2]} "
  puts "-----------"
  puts " #{state[3]} | #{state[4]} | #{state[5]} "
  puts "-----------"
  puts " #{state[6]} | #{state[7]} | #{state[8]} "

end

def input_to_index(num)
  return num.to_i - 1
end

def position_taken?(board, index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
end
end

def valid_move?(board, index)
  if index.between?(0, board.length) && !position_taken?(board, index)
    true
  end
end

def move(board,index,oppo="X")
  board[index] = oppo
end
def turn(board)

  puts "Please enter 1-9:"
  name = gets.strip
  num = input_to_index(name)
  while !valid_move?(board,num)
    puts "Please enter 1-9:"
    name = gets.strip
    num = input_to_index(name)
  end
  move(board,num)
  display_board(board)
end

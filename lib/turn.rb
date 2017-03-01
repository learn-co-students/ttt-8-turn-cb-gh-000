def turn(board)
  puts "Please enter 1-9:"
  pos = gets.chomp
  index = input_to_index(pos)
  until valid_move?(board,index)
    pos = gets.chomp
    index = input_to_index(pos)
  end
  move(board, index)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  pos = index.to_i
  if pos < 0 || pos > 8 || (board[pos] == "X" || board[pos] == "O")
    false
  else
    true
  end
end

def move (board, index, token="X")
  board[index] = token

end

def input_to_index(index)
  pos = index.to_i - 1
  pos
end

def display_board(board)
  for j in 0...3
    puts "-----------" if j > 0
    for i in 0...3
       if i > 0 then print "| #{board[(j*3)+i]} " else print " #{board[(j*3)+i]} " end
    end
    puts
  end
end

def valid_move?(board, index)
  if index > 8 || index < 0 || position_taken?(board,index) then false else true end
end

def position_taken?(board, index)
  return !(board[index].nil? || board[index].empty? || board[index]==" ")
end

def move(board, player_choice, player_char = 'X')
  board[player_choice] = player_char
end

def input_to_index(input)
  if input.empty? then -1 else input.to_i - 1 end
end

def turn(board)
  puts "Please enter 1-9:"
  player_choice = input_to_index(gets)
  if valid_move?(board, player_choice)
    move(board, player_choice)
  else
    turn(board)
  end
  display_board(board)
end

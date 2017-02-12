def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
    puts "-----------"
end

def input_to_index(movement)
    movement.to_i-1
end


def move(boardAry, index, player='X')
    boardAry[index] = player
end
def valid_move?(board,index)
  if index >8 || index <0
    return false
  elsif !position_taken?(board,index)
    return true
  else
    return false
  end
end# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(board, index_number)
  if (board[index_number]==" ") || (board[index_number]=="")|| (board[index_number]==nil)
    false
  else
    true
  end
end

def turn(board)

  puts "Please enter 1-9:"
  input = gets.strip
  input_num = input_to_index(input)
  while   input_num<0 ||  input_num>10
    puts "Please enter 1-9:"
    input = gets.strip
    input_num = input_to_index(input)
  end
  if valid_move?(board,input_num)
      move(board, input_num)
      display_board(board)
  else
    puts "Please enter 1-9:"
    input = gets.strip
    input_num = input_to_index(input)
    while   input_num<0 ||  input_num>10
      puts "Please enter 1-9:"
      input = gets.strip
      input_num = input_to_index(input)
    end
  end

end

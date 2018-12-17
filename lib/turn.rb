def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(index)
  index=index.to_i-1
  return index
end

def turn(board)
    puts "Please enter 1-9:"
    index=gets.strip
    index=input_to_index(index)
    value=valid_move?(board,index)
    until value==true
      puts "Please enter 1-9:"
      index=gets.strip
      index=input_to_index(index)
      value=valid_move?(board,index)
    end
    move(board,index)
    display_board(board)
end
# code your #valid_move? method here
def valid_move?(board,index)
  if index.between?(0,8)==false
    puts "invalid"
  elsif position_taken?(board,index) == false
    return true
  else
    puts "invalid"
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array,index_number)
  if array[index_number] == ' '||array[index_number]==''||array[index_number]==nil
    return false
  else
    return true
  end
end

def move(board,index,position='X')
  board[index]=position
end

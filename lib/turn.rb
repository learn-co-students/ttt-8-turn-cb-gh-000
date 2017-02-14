def turn(board)
  puts "Please enter 1-9:"
  while 1
    input=gets.strip
    index=input_to_index(input)
    if valid_move?(board,index)
      board=move(board,index)
      display_board(board)
      break
    end
    puts "#{input} is not a valid number.Enter another between 1-9"
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(index="1")
  indexInt=index.to_i-1
  return indexInt
end

def move(board,index, character="X")
  board[index]=character
  return board
end

def valid_move?(board,index)
  if index.between?(0,8)==false
   false
 else
   position_taken?(board,index)
 end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if board[index]=="X"
    return false
  elsif board[index]==" " or ""
       return true
  else board[index]=="O"
    return false
  end
end

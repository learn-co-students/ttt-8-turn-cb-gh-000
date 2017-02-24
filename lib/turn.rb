# code your #valid_move? method here

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

def valid_move?(board,index)
  pos = index.to_i
  if (position_taken?(board,pos)  )
  return false
  else
    pos.between?(0,8)


end
end

def position_taken?(board,index)
  if (board[index] == " " || board[index] == "" || board[index] == nil)
    return false
  else
  return  true
end
end

def input_to_index(input)
  input = input.to_i - 1
end

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

def move(array, index, value = "X")
  array[index] = value
end

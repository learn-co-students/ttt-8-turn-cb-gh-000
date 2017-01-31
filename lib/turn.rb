def display_board(array)
puts" #{array[0]} | #{array[1]} | #{array[2]} "
puts"-----------"
puts" #{array[3]} | #{array[4]} | #{array[5]} "
puts"-----------"
puts" #{array[6]} | #{array[7]} | #{array[8]} "
end

def valid_move?(board,index)
 if index >=0 && index <=8 && board[index]==" "
   return true
 else
   return false
 end
end

def input_to_index(user_input)
  user_input = user_input.to_i - 1
  if user_input >= 0 && user_input <=8
    return user_input
  else
    return -1
  end

end


def move(board,index,symbol)
board[index]=symbol
end
def turn(board)
  loop do
  puts "Please enter 1-9:"
  a = gets.strip
  integer = input_to_index(a)
  if integer !=-1
    if valid_move?(board,integer)
        move(board,integer,"X")
    end
    break
  end
end
display_board(board)
end

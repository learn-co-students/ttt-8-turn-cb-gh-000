def turn(array)
  puts "Please enter 1-9:"
  input_index = gets.strip
  if valid_move?(array,input_to_index(input_index))
    move(array,input_index.to_i- 1,"X")
  else
    turn(array)
  end

end
def input_to_index(value)
  value = value.to_i
  value -=1
  return value
end

def display_board(board)
    seperator ="-----------"
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "#{seperator}"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "#{seperator}"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(array,index)
  if index.between?(0,8) && position_taken?(array,index)
    return true
  else
      return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array,index)
  if array[index] == " "
    return true
  else
    if array[index] == "X" || array[index] == "O"
        return false
    end
  end
end

def move(array,value,player = "X")
  array[value] = "#{player}"
  display_board(array)
end

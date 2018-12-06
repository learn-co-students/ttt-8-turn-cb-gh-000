
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(num)
	str_to_int = num.to_i
	index = str_to_int - 1
  return index
end

def position_taken?(array, index)
  if (array[index] == " ") || (array[index] == "")
      false
  elsif array[index] == nil
      false
  elsif array[index] == "X" || "O"
      true
  end
end

def valid_move?(array, index)
  if !position_taken?(array, index) && index.between?(0,8)
      true
  else
      false
  end
end

def move(array, index, value="X")
  array[index] = value
	return array
end

def turn(array)

  puts "Please enter 1-9:"

  input = gets.strip
  index = input_to_index(input)

  if valid_move?(array, index)
    move(array, index)
    display_board(array)
  else
    turn(array)
  end

end

def turn(board)
  puts 'Please enter 1-9:'
  user_input = gets.strip()
  index = input_to_index(user_input)

  if valid_move?(board, index) == true
    move(board, index)
    display_board(board)
  else
    turn(board)
  end
end

def display_board(array)
  puts " #{array[0]} | #{array[1]} | #{array[2]} "
  puts "-----------"
  puts " #{array[3]} | #{array[4]} | #{array[5]} "
  puts "-----------"
  puts " #{array[6]} | #{array[7]} | #{array[8]} "
end

def position_taken?(array, index)
  if array[index] == (' ' || '' || nil)
    return false
  else
    return true
  end
end

def valid_move?(array, index)
  if (index.between?(0,8) == true && position_taken?(array, index) == false)
    return true
  else
    return false
  end
end

def move(array, index, data = 'X')
  array[index] = data
end

def input_to_index(user_input)
  return user_input.to_i - 1
  if user_input.to_i.to_s == true
    return user_input.to_i - 1
  else
    return -1
  end
end

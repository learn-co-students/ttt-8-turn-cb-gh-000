def turn(board)
  counter = 0
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if valid_move?(board, index)
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

def display_board(x)
  puts " #{x[0]} | #{x[1]} | #{x[2]} "
  puts "-----------"
  puts " #{x[3]} | #{x[4]} | #{x[5]} "
  puts "-----------"
  puts " #{x[6]} | #{x[7]} | #{x[8]} "
end

# code your #valid_move? method here
def valid_move?(fir, sec)
  if (sec < 0) || (sec > 8)
    return false
  elsif position_taken?(fir,sec)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(fir, sec)
  if (fir[sec] == " ") || (fir[sec] == "") || (fir[sec] == nil)
    return false
  else
    return true
  end
end

def input_to_index(input)
  index = (input.to_i) - 1
  return index
end

def move(array, index, value = "X")
  array[index] = value
end

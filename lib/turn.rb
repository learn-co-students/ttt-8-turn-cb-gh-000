
def turn(board)
  puts "Please enter 1-9:"
  i = 0
  loop {
    input = gets.strip
    i = input_to_index(input)
    if valid_move?(board , i)
      break
    end
    puts "Please enter 1-9:"
  }
  move(board, i)
  display_board(board)
end


# code your #valid_move? method here
def valid_move?(array, i)
  if i < 0 || i > 8
    false
  elsif position_taken?(array, i)
    false
  else
    true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(array, index)
  if array[index] == " " || array[index] == "" || array[index] == nil
    false
  else
    true
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
def input_to_index(index)
  index.to_i - 1
end

def move(array , index , c = "X")
  array[index] = c
  array
end

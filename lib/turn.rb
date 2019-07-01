def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def move(board, position, char = "X")
  update_array_at_with(board, position, char)
end

def position_taken?(board , index)
  if board[index] == "X" || board[index] == "O"
    return true
  end
end

def turn(board)

  while true
    puts "Please enter 1-9:"

    user_input = gets.strip
    converted_input = input_to_index(user_input)

    if valid_move?(board, converted_input)
      move(board, converted_input)
      display_board(board)
      return
    else
      puts "invalid input"
    end

  end
end

def update_array_at_with(array, index, value)
  array[index] = value
end


def valid_move?(board , index)
  if index.between?(0,8) && !position_taken?(board,index)
    return true
  end
end

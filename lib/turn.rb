def display_board(board)
  counter = 0
  while counter < 9
    puts " #{board[counter]} | #{board[counter + 1]} | #{board[counter + 2]} "

    if counter != 6
      puts "-----------"
    end

    counter += 3
  end
end

def valid_move?(board, index)
  if index < 0 || index > 8
    return false
  end
  if board[index] != "" && board[index] != " "
    return false
  end

  true
end

def input_to_index(index)
    index = index.to_i - 1
end

def move(board, index, token="X")
  board[index] = "#{token}"
end

def turn(board)
  index = -1
  valid = false

  while valid == false
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)

    valid = valid_move?(board, index)
  end

  move(board, index)
  display_board(board)
end

def turn(board)
  while 1
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if (valid_move?(board, index))
      board[index] = 'X'
      display_board(board)
      break
    else
      puts "invalid"
    end
  end
end

def position_taken?(board, index)
  if (board.size == 9 && (board[index] == nil || board[index] == " " || board[index] == ""))
    return (false)
  else
    return (true)
  end
end

def valid_move?(board, index)
  if ((index >= 0 && index < 9) && !position_taken?(board, index))
    return (true)
  else
    return (false)
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

def input_to_index(place)
  return place.chomp.to_i - 1
end

def move(board, index, value='X')
  board[index] = value
end
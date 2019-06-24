def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
 return input.to_i - 1
end


def valid_move?(board,index)
  if (board[index] == " " || board[index] == "" || board[index] == nil) && index.between?(0,8)
    return true
  end
  return false
end

def move(board,index,value)
    board[index] = value
end

def turn(board)
puts "Please enter 1-9:"
  value = gets.strip
  index = input_to_index(value)
  if valid_move?(board,index)
    move(board,index,"X")
  else
    puts "Please enter 1-9:"
    value = gets.strip
    index = input_to_index(value)
  end

    display_board(board)

end

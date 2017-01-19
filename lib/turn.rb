def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index)
    move(board, index)
    display_board(board)
  else
    while !valid_move?(board, index)
      index = gets.chomp.to_i
      index = input_to_index(index)
    end
  end
end
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def valid_move?(board, index)
  if index.between?(0, 8) && board[index].strip == ""
    return true
  else
    return false
  end
end
def is_number?(string)
  true if Float(string) rescue false
end

def input_to_index(index)
  if  is_number?(index)
    return index.to_i-1
  else
    return -1
  end
end
def move(board, index, char="X")
  board[index] = "#{char}"
end

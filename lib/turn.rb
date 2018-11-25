def display_board(boardArr)
   puts " #{boardArr[0]} | #{boardArr[1]} | #{boardArr[2]} "
   puts "-----------"
   puts " #{boardArr[3]} | #{boardArr[4]} | #{boardArr[5]} "
   puts "-----------"
   puts " #{boardArr[6]} | #{boardArr[7]} | #{boardArr[8]} "
end

def input_to_index(index)
  return index.to_i - 1
end

def move(arr, index, char = "X")
    arr[index] = char
    return arr
end

def valid_move?(board, index)
  if index >= 0 && index <= 8 then
    return position_taken?(board, index)
  else
    return false
  end
end

def position_taken?(board, index)
   return board[index] == " " || board[index] == ""
end

def turn(board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  if valid_move?(board, index) then
    move(board, index, "X")
    display_board(board)
  else
    turn(board)
  end
end

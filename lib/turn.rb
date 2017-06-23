def turn(board)
validMove = false

    puts "Please enter 1-9:"
    input = gets.strip
    until validMove == true
    index = input_to_index(input)
    if (valid_move?(board , index) == true)
      move(board ,index)
      display_board(board)
      validMove = true
    else
      puts "invalid input please try again"
      input = gets.strip
      validMove = false
    end
  end
return validMove
end

# display board method
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# cinput to index method and all that
def input_to_index(input)
  newInput = input.to_i
  return newInput - 1
end

# the move array the assigns a value to the array and all that
def move(array, index, value = "X")
    array[index] = value
end


# making sure it is a valid move!
def valid_move?(board, index)

if position_taken?(board,index) == true
  return false
elsif index > -1 && index < 9
    return true
else
  return false
end

end

# Position Taken Method to see if the spot has been taken and all that
def position_taken?(board, index)
  if board[index] == " " || board[index] == ""
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
end
end

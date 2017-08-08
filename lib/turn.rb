def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "

end
# code your input_to_index and move method here!
def input_to_index(input)
  input1 = (input.to_i - 1)
  return input1
end
def valid_move?(board,index)

  if ((index<=8) && (index>=0)) && (position_taken(board, index))
    return true
  else
    return false
  end
end
def move(board, index, character = "X")
  board[index] = character
  return board
end

def turn(board)
  puts "Please enter 1-9:"
  move = gets.strip
  index = input_to_index(move)

    if valid_move?(board,index)


    else
      puts "Please enter 1-9:"
      move = gets.strip
      index = input_to_index(move)
      until valid_move?(board,index)
        puts "Please enter 1-9:"
        move = gets.strip
        index = input_to_index(move)
      end
    end
    move(board,index)
    display_board(move(board,index))
  end




def position_taken(board, index)


  if (board[index]==" ") || (board[index]== "")
    return true
  else
    return false
  end
end

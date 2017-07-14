# turn method - the one which coordinates everything
def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)

  until(valid_move?(board,index))
    puts "Please enter 1-9:"
    index = gets.strip
    index = input_to_index(index)
  end

    move(board,index)
    display_board(board)
    
end


# code your input_to_index
def input_to_index(n)

  index = n.to_i - 1
end

# move method
def move(board,index,letter="X")
  board[index] = letter
end



# displays the board
def display_board(board)
  val = "   "
  for i in 0...3
    line = ""
    for j in 0..2
      val = " #{board[3*i+j]} "
      if j!=2
          line += val+"|"
      else
          line += val
      end
    end
    puts line
    if i != 2
      puts "-----------"
    end
  end
end

# code your #valid_move? method here
def valid_move?(board,index)
  if index<0 || board[index] == nil || position_taken?(board,index)
    return false
  else
    return true
  end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  if(board[index]=="" || board[index]==" ")
    return false
  else
    return true
  end
end

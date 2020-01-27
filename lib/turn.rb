





def display_board(board )

    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "


end



def position_taken?(board , index )

  if index>8 || index<0 || board[index]=="X" || board[index]=="O"
    return true
  end
  return false
end

def valid_move?(board , index )

  if position_taken?(board,index)
    return false
  end
  return true
end


def input_to_index(input)
  index = input.to_i - 1
end


def move(board , index , token="X")
  board[index] = token

end




def turn (board)
  puts "Please enter 1-9:"
  index = input_to_index(gets.strip)
  until valid_move?(board,index)
    puts "Please enter 1-9, which is not taken"
    index = input_to_index(gets.strip)
  end
  move(board,index)
  display_board(board)


end

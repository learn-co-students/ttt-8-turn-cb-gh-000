# code your #valid_move? method here
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(st)
  k= st.to_i
  return k-1
end



def position_taken?(board, index)


   if (board[index] == " " || board[index] == "" || board[index] == nil  )
    return false
   end

  if  (board[index] == "X" or board[index] == "O")
      return true
  end
 end


def valid_move?(board, index)
  if index.between?(0,8) == false
    return false
  elsif position_taken?(board, index) == false
      return true
    end

end


def move( board, index, chare="X")
  board[index]= chare
end



def turn(board)
  puts "Please enter 1-9:"
  index = gets
  ko = input_to_index(index)
  if valid_move?( board, ko ) == true
    move(board, ko)
  else
    puts "Please enter 1-9:"
    index= gets 
  end


display_board(board)


end

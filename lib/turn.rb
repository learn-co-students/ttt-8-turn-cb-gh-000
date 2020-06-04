def turn(board)
  puts "Please enter 1-9:"
  input= gets.strip
  index=input_to_index(input)
  until valid_move?(board,index)
    puts "Please enter 1-9:"
    input= gets.strip
    index=input_to_index(input)
  end

  move(board,index,c="X")
  display_board(board)

end

def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

def input_to_index(a)
  index= a.to_i-1
end

def move(board,index,c="X")
  board[index]= c
end

def valid_move?(board,index)
  if index.between?(0,8)
    if board[index]==" " || board[index]=="" || board[index]== nil
      return true
    else
      return false
    end
  else
    return false
  end

end

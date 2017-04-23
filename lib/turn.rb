def valid_move?(board,index)
  if position_taken?(board,index) || index > 8 || index < 0
    false
  else
    true
  end

end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!

def position_taken?(board,index)
  if(board[index] == " " || board[index] == "" || board[index] == nil)
    false
  else
    true
  end
end


# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
end

def move(board,index,char = "X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  myInput = gets.strip
  myInput = input_to_index(myInput)
  while (valid_move?(board,myInput) != true)
    puts "Please enter 1-9:"
    myInput = gets.strip
    myInput = input_to_index(myInput)
  end
  board[myInput] = "X"
  display_board(board)

    
  

end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
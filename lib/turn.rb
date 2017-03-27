

def display_board(board)

  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board, index)
    if position_taken?(board,index) == false && index.between?(0,8)
      true
    elsif position_taken?(board,index) == true
      false

    elsif !index.between?(0,8)
      false

    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " ||  board[index] == "" ||  board[index] == nil

    false
  elsif board[index] == "X" || board[index] == "O"
    true
  end
end
# code your input_to_index and move method here!
def input_to_index(input)
  input.to_i - 1
rescue ArgumentError
  -1
end

def move(array, index, value="X")
  array[index]=value
end
def turn(board)
  
  puts "Please enter 1-9:"
  input = gets.strip
  
  index=input_to_index(input)
  until valid_move?(board,index)
    puts "invalid move, please try again"
    input = gets.strip
    
    index=input_to_index(input)
      
  end
  move(board,index)
  display_board(board)
end
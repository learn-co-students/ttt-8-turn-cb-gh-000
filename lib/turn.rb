board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

# code your input_to_index and move method here!


def input_to_index(input)
  index = input.to_i
  index = index -1
  return index
end

  def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
       return false
    elsif board[index] == "X" || board[index] =="O"
       return true
    end
  end


def  valid_move?(board,index)
  if position_taken?(board,index) == false && index.between?(0,8)
    return true
  elsif position_taken?(board,index) == true && index.between?(0,8)
    return false
  end
end

def move(board,index,value='X')
  board[index]= value
end


def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.chomp
  index = input_to_index(input)
  value = "X"
  if valid_move?(board,index) == true
    move(board,index,value)
  else
    display_board(board)
    puts "Please enter 1-9:\n"
    input = gets.chomp
    index = input_to_index(input)
  end
  display_board(board)
end

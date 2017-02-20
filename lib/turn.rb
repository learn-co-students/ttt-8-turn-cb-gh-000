def display_board(board=["   ","   ","   ","   ","   ","   ","   ","   ","   "])
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-"*11
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-"*11
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
# code your #valid_move? method here
def valid_move?(board, index)
  if position_taken?(board, index) == true
    return false
  elsif position_taken?(board, index) == false && index <= 8 && index >= 0
    return true
  else
    return false
  end
end
# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    return false
  elsif board[index] == "X" || board[index] == "O"
    return true
  end
end


# code your input_to_index and move method here!
def input_to_index(number)
  return number.to_i - 1
end

def move(ar,number,x="X")
  ar[number] = x
  return ar
end

def turn(board)
  puts "Please enter 1-9:"
  index = gets.strip
  index = input_to_index(index)
  if valid_move?(board, index) == true
    move(board, index)
  elsif valid_move?(board,index) == false
    puts "invalid"
    while valid_move?(board,index) == false
      puts "Please enter 1-9:"
      index = gets.strip
      index = input_to_index(index)
    end
  end
  display_board(board)
end

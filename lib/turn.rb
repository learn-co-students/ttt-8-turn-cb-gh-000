def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(input)
  return input.to_i - 1
end

def move(arr,ind,cha = "X")
  arr[ind]=cha
end

# code your #valid_move? method here
def valid_move?(array, index)
     if index >= 0 && index < 10
        if position_taken?(array,index)
          return false
        else return true
        end
    else
      return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
# code your #position_taken? method here!
def position_taken?(array, index)
  return false if array[index] == " " || array[index] == "" || array[index] == nil
  return true if array[index] == "X" || array[index] == "O"
end

def turn(board)
  puts "Please enter 1-9:"
  get = gets.chomp
  i=input_to_index(get)
  if valid_move?(board,i)
     move(board,i)
     display_board(board)
     turn(board)
  else turn(board)
  end
end

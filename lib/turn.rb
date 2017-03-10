def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  until valid_move?(board,input)
  input = gets.strip
  input = input_to_index(input)
  end
  move(board,input)
  display_board(board)
end

def display_board(board)
  output  = " #{board[0]} | #{board[1]} | #{board[2]} \n"
  output += "-----------\n"
  output += " #{board[3]} | #{board[4]} | #{board[5]} \n"
  output += "-----------\n"
  output += " #{board[6]} | #{board[7]} | #{board[8]} \n"
  puts output
end

def move(array, index, value="X")
  array[index] = value
end

def input_to_index(index)
  index.to_i-1
end

def valid_move?(board,index)
    if position_taken?(board,index) || index<0 || index>8  
      false
    else
      true
    end
end

def position_taken?(board,index)

      if board[index] == "X" || board[index] == "O"
        true
      else
        false
      end
end 


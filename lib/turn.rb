def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, character)
  if valid_move?(board, index)
    board[index] = character
  else
    turn(board)
    return false;
  end
end

def valid_move?(board, index)
  if index.between?(0,8)
    if board[index] == "" || board[index] == " " || board[index] == nil 
      return true 
    else 
      return false
    end
  else
    return false
  end
end

def input_to_index(input)
  index = input.to_i - 1
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if !move(board, index, "X")
    return
  end
  display_board(board)
end
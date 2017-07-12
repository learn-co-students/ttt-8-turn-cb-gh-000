def display_board(board = [" "," "," "," "," "," "," "," "," "])
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-"*11
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-"*11
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move? (board, index)
  if index <= 8 && index >= 0
    if position_taken?(board, index)
      return false
    else
      return true
    end
  end
end

def turn(board)
  flag = false
  while !flag
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      flag = true
    else
      puts "Invalid move"
      flag = false
    end
  end
end

def input_to_index(input)
  input = input.to_i
  index = input - 1
  return index
end

def position_taken? (board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
      return false
    else
      return true
    end
end

def move(board, index, token = "X")
  board[index] = token
  return board
end

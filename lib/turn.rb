board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
moves = 0

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board,moves)
  display_board(board)
  puts "Please enter 1-9:"
  input = gets.strip()
  until input
    input = gets.strip()
  end
  input = input_to_index(input)
  while moves < 9
    if valid_move?(board,input) && available_moves(board,moves)
      if moves == 0 || moves % 2 == 0
        move(board,input,player = "X")
      else
        move(board,input,player = "O")
      end
      display_board(board)
      moves += 1
    else
      turn(board,moves)
    end
  end
end

def input_to_index(input)
  return input.to_i() - 1
end

def move(board,input,player)
  return board[input] = player
end

def valid_move?(board,index)
  if !position_taken?(board,index) && index < 9 && index >= 0
    return true
  elsif position_taken?(board,index) || index > 9 || index < 0
    return false
  end
end

def position_taken?(board,index)
  if board[index] == "" || board[index] == " " || board[index] == nil
    return false
  else
    return true
  end
end

def available_moves(board,moves)
  if moves >= 9
    puts "Game is done."
    return false
  else
    return true
  end
end
turn(board,moves)

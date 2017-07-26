#!/usr/bin/env ruby

def display_board(board)
  puts " "+board[0]+" "+"|"+" "+board[1]+" "+"|"+" "+board[2]+" "
  puts "------------"
  puts " "+board[3]+" "+"|"+" "+board[4]+" "+"|"+" "+board[5]+" "
  puts "------------"
  puts " "+board[6]+" "+"|"+" "+board[7]+" "+"|"+" "+board[8]+" "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
 if board[index] == " "  && index.between?(0,8)
   return true
 else
   return false
 end
end

def move(board, input, token = "X")
  board[input] = token
end

def turn(board)
  puts "Please enter 1-9:"
  a = input_to_index(gets.strip)
  if valid_move?(board, a)
    move(board, a)
  else
    turn(board)
  end
  display_board(board)
end

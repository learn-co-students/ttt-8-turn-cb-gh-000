#!/usr/bin/env ruby
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, index)
  !position_taken?(board, index) && index < 9 && index >= 0
end

def position_taken?(board, index)
  !(board[index] == "" || board[index] == " " || board[index] == nil)
end

def move (board, index, token = "X")
  board[index] = token
end

def input_to_index(input)
  input.to_i - 1
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if(valid_move?(board, input))
      move(board, input)
      display_board(board)
      break
    end
  end
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  converted_input = input.to_i
  if converted_input.is_a? String
    converted_input = -1
  else
    converted_input -= 1
  end
end

def valid_move?(board, index)
  !(board.any?{ |e| e.nil?} || board.any?{ |e| e.eql? ""} || board[index] != " " || !index.between?(0, 8))
end

def move(board, index, symbol)
  board[index] = symbol
end

def turn(board)
  is_valid = false

  while !is_valid
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)

    is_valid = valid_move?(board, index)
    if is_valid
      move(board, index, "X")
      display_board(board)
    end
  end
end

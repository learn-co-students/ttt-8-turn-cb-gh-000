def display_board(board)
  line = (["-"]*11).join ""
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts line
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts line
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(user_input)
  user_input.to_i - 1
end

def valid_move?(board, index)
  index.between?(0,8) && ([" ", "", nil].include? board[index])
end

def move(board, index, char = "X")
  board[index] = char
end

def turn(board)
  loop do
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
      break
    end
  end
end
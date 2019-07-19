def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  ind = input_to_index(input)
  until valid_move?(board, ind)
    puts "Please enter 1-9:"
    input = gets.strip
    ind = input_to_index(input)
  end
  move(board, ind)
  display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, ind)
    if position_taken?(board, ind)
      return false
    elsif ind.between?(0, 8)
      return true
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, ind)
  if board[ind] == " " || board[ind] == "" || board[ind] == nil
    return false
  else
    return true
  end
end

def input_to_index(inp)
  return inp.to_i - 1
end

def move(b, inp, char="X")
  b[inp] = char
  return b
end

def turn(board)
  moved = false
  while moved == false do
    puts 'Please enter 1-9:'
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(board, index)
      move(board, index)
      moved = true
      display_board(board)
    end
  end
end

def display_board(board)
  (0..2).each do |row|
    puts " #{board[(row*3)]} | #{board[(row*3)+1]} | #{board[(row*3)+2]} "
    puts '-----------' if row < 2
  end
end

def input_to_index(input)
  input.to_i - 1
end

def move(board, pos, c = 'X')
  board[pos] = c
end

def display_board(board)
  (0..2).each do |row|
    puts " #{board[(row*3)]} | #{board[(row*3)+1]} | #{board[(row*3)+2]} "
    puts '-----------' if row < 2
  end
end

def valid_move?(board, pos)
  return false if pos > 8 || pos < 0
  return false if position_taken?(board, pos)
  true
end

def position_taken?(board, pos)
  board[pos] != ' ' && board[pos] != nil && board[pos] != ''
end
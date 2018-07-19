def display_board(board)
  board.each_with_index do |cell,i|
    if i%3==0 and i>0
      puts "\n-----------"
    elsif i>0
      print "|"
    end
    print " #{cell} " 
  end
  print "\n"
end

def valid_move?(board, index)
  b=false
  if index>=0 && index<board.length && !position_taken?(board, index)
    b=true
  end
  return b
end

def position_taken?(board, index)
  b=true
  if board[index] == " " || board[index] == "" || board[index] == nil
    b=false
  end
  return b
end

def input_to_index(index)
  return index.strip.to_i-1
end

def move(array, index, value="X")
  array[index] = value
end

def turn(board)
  puts "Please enter 1-9:"
  index=input_to_index(gets)
  valid=valid_move?(board, index)
  until valid do
    puts "Please enter 1-9:"
    index=input_to_index(gets)
    valid=valid_move?(board, index)
  end
  move(board, index)
  display_board(board)
end
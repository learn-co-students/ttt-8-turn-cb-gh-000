def display_board(board)
  line = []
  Array.new(3) {|x| x * 3}.each { |x|
    t = board[x..(x+2)]
    line.push(" " + t.join(" | ") + " ")
  }
  puts line.join("\n" + (["-"] * 11).join("") + "\n")
end

def valid_move?(board, index)
  if index < 0 || index >= board.length
    return false
  end
  pos = board[index]
  return pos == "" || pos == " " || pos == nil
end

def input_to_index(input)
  if input.match(/^\d+$/)
    return input.to_i - 1
  end
  return -1
end

def move(board, index, char="X")
  board[index] = char
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while !valid_move?(board, index)
    input = gets.strip
    index = input_to_index(input)
  end
  move(board, index)
  display_board(board)
  return board
end

def display_board(array)
     puts " #{array[0]} | #{array[1]} | #{array[2]} "
     puts "-----------"
     puts " #{array[3]} | #{array[4]} | #{array[5]} "
     puts"-----------"
     puts " #{array[6]} | #{array[7]} | #{array[8]} "
  end
  def valid_move?(board,index)
    if !index.between?(0,9)
      false
    elsif position_taken?(board,index)
      false
    elsif !position_taken?(board,index)
        true
    end
  end

  def position_taken?(board,index)
    if board[index] == " " || board[index] == "" or board[index]==nil
      false
    else
      true
    end
  end

  def input_to_index(input= -1)
   a = input.to_i
   b = a - 1
   return b
  end

  def move(array, index, value="X")
    array[index] = value
  end
  def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  while  !valid_move?(board,index)
  input = gets.strip
  index = input_to_index(input)
end
move(board,index)
display_board(board)

end

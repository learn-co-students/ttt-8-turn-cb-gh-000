
  boards= [" "," "," "," "," "," "," "," ","X"]
  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts"-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts"-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end


  def valid_move?(board, index)
    if index.between?(0,8) == true
      if position_taken?(board,index) == false
        return true
      else
        return false
      end
    else
      return false
    end
  end

  # re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
  def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
      return false

    elsif board[index] == "X" || board[index] == "O"
      return true
    elsif board[index] == nil
      return false
    end

  end
  def input_to_index(user_input)
  return user_input.to_i - 1
  end

  def move(board, index, char="X")
    board[index] = char
  end

def turn(board)

  puts "Please enter 1-9:"

  index = gets.chomp
  index = input_to_index(index)


if valid_move?(board,index) == true
  move(board,index)
  display_board(board)

else
  turn(board)
end


end

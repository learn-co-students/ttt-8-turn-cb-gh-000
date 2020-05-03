def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end
def input_to_index(user_input)
  user_input.to_i-1
end
def valid_move?(board,index)
  if index.between?(0,8)
    true
    if board[index] == "" || board[index] == " " || board[index] == nil
      true
    else
      false
    end
  else
    false
  end
end
def move(board,position,char)
  board[position] = char

end
def turn(board)
  puts "Please enter 1-9:"
  input = gets
  llamado = input_to_index(input)
  validacion = valid_move?(board,llamado)
  if validacion == true
    move(board,llamado,"X")
    display_board(board)
  else
    turn(board)
  end
  #if validacion

  #end

end

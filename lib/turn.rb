
#display_board

def display_board(board)
  puts (" #{board[0]} | #{board[1]} | #{board[2]} ")
  puts ("-----------")
  puts (" #{board[3]} | #{board[4]} | #{board[5]} ")
  puts ("-----------")
  puts (" #{board[6]} | #{board[7]} | #{board[8]} ")
end

#input_to_index

def input_to_index(input)

  input.to_i - 1
end

#valid_move

# code your #valid_move? method here
def valid_move?(board, index)

  if(board[index] == "X" || board[index] == "O")
    false
elsif(index.between?(0,8) && board[index] == " ")

    true

  end
end



#move

def move(board, input, token)

  board[input] = token
end


#turn

def turn(board)

  puts "Please enter 1-9:"

  input = input_to_index(gets.strip)



  if(valid_move?(board,input))
    move(board,input, "X")
    display_board(board)
  else
    puts "Please enter 1-9:"

    display_board(board);
    input = gets.strip


  end
end

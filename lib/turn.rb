def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board,index)
    if index.between?(0,8)
        return position_taken?(board, index)
    else
        return false
    end
end

def position_taken?(board, index)
    if(board[index] == " " || board[index] == "" || board[index] == nil)
        return true
    elsif(board[index] == 'X' || board[index] == 'O')
        return false
    end
end

def input_to_index(user_input)
    if user_input.to_i
        return user_input.to_i - 1
    else
        return -1
    end
end

def move(board,index,char="X")
    board[index] = char
end

def turn(board)
    puts "Please enter 1-9:"
    user_input = gets.strip
    index = input_to_index(user_input)

    if valid_move?(board,index)
        move(board,index,char="X")
        display_board(board)
        return;
    else
        turn(board)
    end
end
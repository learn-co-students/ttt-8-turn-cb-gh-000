def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
   puts "Please enter 1-9:"
   input = gets
   index = input_to_index(input)
   if valid_move?(board,index)
       move(board,index)
       display_board(board)
   else
       turn(board)
   end
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def valid_move?(board,index)
    if index.between?(0,8)
        if position_taken?(board,index)
            puts "position is already taken, choose another position..."
            false
        else
            true
        end
    else
        puts "please enter a position between 1-9..."
        false
    end
end

def position_taken?(board,index)
    if board[index] != " "
        true
    else
        false
    end
end

def move(board,position,symbol = 'X')
    board[position] = symbol
end

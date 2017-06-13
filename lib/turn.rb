def display_board(board)
    puts  " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------------"
    puts  " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------------"
    puts  " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
    input_to_index = input.to_i - 1
end

def valid_move?(board, index)
    if index < 0 || index > 8
        false
    elsif board[index] == " " 
        true 
    else
        false
    end
end

def move(board, index, player)
    board[index] = player    
end

def turn(board)  
    display_board(board)
    puts "Please enter 1-9:"
    input = gets
    index = input_to_index(input)
    toggle = true
    if toggle == true
        player = 'X'
    else
        player = 'O'
    end
    if valid_move?(board, index) 
        move(board, index, player)
        toggle = !toggle
        display_board(board)
    else
        turn(board) 
    end
end


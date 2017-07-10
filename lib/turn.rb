def turn(board)
    puts "Please enter 1-9:"
    input = gets.strip
    input = input_to_index(input)
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        turn(board)
    end
    
end

def display_board(board = ["   ", "   ", "   ", "   ", "   ", "   ", "   ", "   ", "   "])
    puts " #{board[0]} " + "|" " #{board[1]} " + "|" " #{board[2]} "
    puts "-----------"
    puts " #{board[3]} " + "|" " #{board[4]} " + "|" " #{board[5]} "
    puts "-----------"
    puts " #{board[6]} " + "|" " #{board[7]} " + "|" " #{board[8]} "
end

def position_taken?(board, index)
    board[index] == "" || board[index] == " "
    board[index] == "X" || board[index] == "O"
end

def valid_move?(board, index)
    !position_taken?(board, index) && index.between?(0, 8)
end

def input_to_index(user_input)
    user_input.to_i - 1
end

def move(array, index, value = "X")
    array[index] = value
end
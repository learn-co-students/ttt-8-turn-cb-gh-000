def turn(board)
    display_board(board)
    puts "Please enter 1-9:"

    user_input = gets.strip
    converted_input = input_to_index(user_input)
    if valid_move?(board, converted_input) == true
        move(board, converted_input)
    else
        puts "not a valid input"
        new_input = gets.strip
    end
    display_board(board)
end

def input_to_index(user_input)
    converted_input = user_input.to_i - 1
end

def valid_move?(board, index)
    if index.between?(0, 9) && position_taken?(board, index) == false
        true
    elsif index.between?(0, 9) && position_taken?(board, index) == true
        false
    elsif !(index.between?(0, 9))
        nil
    else
        false
    end
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == ""
        false
    else
        true
    end
end

def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, token = "X")
    board[index] = token
end

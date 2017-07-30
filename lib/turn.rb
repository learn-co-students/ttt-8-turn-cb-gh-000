
def display_board(board)
    pipe = "|"
    row1 = " #{board[0]} " + pipe + " #{board[1]} " + pipe + " #{board[2]} "
    row2 = " #{board[3]} " + pipe + " #{board[4]} " + pipe + " #{board[5]} "
    row3 = " #{board[6]} " + pipe + " #{board[7]} " + pipe + " #{board[8]} "
    separator = "-----------"

    puts  row1 + "\n" + separator + "\n" + row2 + "\n" + separator + "\n" + row3
end

def valid_move?(board, index)
    if index.between?(0, 8) == true && position_taken?(board, index) == false
        return true
    else
        return false
    end
end

def position_taken?(board, index)
    if board[index] == " " || board[index] == "" || board[index] == nil
        return false
    elsif board[index] == "X" || board[index] == "O"
        return true
    end
end

def move(board, position, char = "X")
    board[position] = char
end

def input_to_index(input)
    number = input.to_i
    number = number - 1
end
#---------------------------------------------------------
def turn(board)
    puts "Please enter 1-9:"
    input = input_to_index(gets.strip)
    if valid_move?(board, input)
        move(board, input)
        display_board(board)
    else
        turn(board)
    end
end

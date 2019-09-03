def display_board(board)
        puts " #{board[0]} | #{board[1]} | #{board[2]} "
        puts "-----------"
        puts " #{board[3]} | #{board[4]} | #{board[5]} "
        puts "-----------"
        puts " #{board[6]} | #{board[7]} | #{board[8]} "
        puts "-----------"
end

def input_to_index(user_input)
        return user_input.to_i - 1
end

def valid_move?(board, index)
        return !position_taken?(board, index) && index.between?(0, 8)
end

def position_taken?(board, index)
        return board[index] == "X" || board[index] == "O"
end

def move(board, index, player = "X")
        if valid_move?(board, index)
                board[index] = player
                return board
        end
end

def turn(board)
        puts "Please enter 1-9:"
        input = input_to_index(gets.strip)
        until input.between?(0, 8)
                puts "Please enter 1-9:"
                input = input_to_index(gets.strip)
        end
        move(board, input)
        display_board(board)
end

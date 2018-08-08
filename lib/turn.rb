def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, move)
    if !move.between?(0, 8)
        return false
    elsif position_taken?(board, move)
        return false
    end
    true
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    cell = board[index]
    if cell == " " || cell == "" || cell == nil
        return false
    end
    true
end

def move(board, index, token = "X")
    board[index] = token
end

def input_to_index(input)
    input.to_i - 1
end

def turn(board)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if valid_move?(board, index)
        move(board, index)
    else
        while !valid_move?(board, index)
            index = input_to_index(gets.strip)
        end
    end
    display_board(board)
end

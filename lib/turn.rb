


def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
      puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
end




def turn(board)
    puts "Please enter 1-9:"
    index = input_to_index(gets.strip)
    if valid_move?(board, index)
        move(board, index, char="X")
        display_board(board)
    else
        turn(board)
    end
    
end


# convert input to a move
def input_to_index(move)
    move = move.to_i - 1
end

def move(board, place, char="X")
    board[place] = char
end



def valid_move?(board, index)
    if index.between?(0,8) && !position_taken?(board, index)
        return true
    else
        return false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    val = board[index]
    no = ["", " ", nil]
    yes = ["X", "x", "o", "O", "0"]
    if no.include? val
        return false
    elsif yes.include? val
        return true
    end
end

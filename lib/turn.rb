# display_board the updated board
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# converts entered position to array index
def input_to_index(position)
    position = position .to_i
    index = position-1
end


def move(array, index, value="X")
    array[index] = value
    return array
end

# checks whether the position is pre occupied or not
def position_taken?( board, index )
    if board[index] == " " || board[index] == nil || board[index] == ""
        return false
    else
        return true
    end
end


# checks whether the position entered is valid including checking for the existing X or O
def valid_move?( board, index )
    if index >= 0 && index <= 8
        if position_taken?( board, index ) # this is the one
            return false
        else
            return true
        end
    else
        return false
    end
end


board = [ " ", " ", " ", " ", " ", " ", " ", " ", " ", " ", ] # board array

def turn( board )
    puts "Please enter 1-9:"
    position = gets.strip
    index = input_to_index(position)
    if valid_move?( board, index )
        move( board, index)
        display_board( board )
    else
        turn(board)
    end
end

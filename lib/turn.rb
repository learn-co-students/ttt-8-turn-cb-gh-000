def turn(board)
    index = -1
    loop do
        puts "Please enter 1-9:"
        input = gets.strip
        index = input_to_index(input)
        if valid_move?(board, index)
            break
        end
    end
    board[index] = "X"
    display_board(board)
end

def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

# code your input_to_index and move method here!
def input_to_index(str)
    num = str.to_i
    num - 1
end

def move(board, index, input="X")
    board[index] = input
end

# code your #valid_move? method here
def valid_move?(board, index)
    if index.between?(0,8)
        !position_taken?(board, index)
    else
        false
    end
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
    if board[index] == " "
        false
    elsif board[index] == nil
        false
    elsif board[index] == ""
        false
    elsif board[index] == "O" || board[index] == "X"
        true
    end
end

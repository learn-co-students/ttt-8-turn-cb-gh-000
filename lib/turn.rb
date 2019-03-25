def display_board(board)
puts " #{board[0]} | #{board[1]} | #{board[2]} "
puts "-----------"
puts " #{board[3]} | #{board[4]} | #{board[5]} "
puts "-----------"
puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(tablero, indice)
  indice = indice.to_i
  if position_taken?(tablero, indice) && indice >= 0
    return true
  else
    return false
  end
end

def position_taken? (board, index)
    if board != nil && index != nil && index < board.size
      if board[index] == "" || board[index] == " " || board[index] == nil
        return true
      end
    end
end

def move(board, pos, type)
  board[pos] = "#{type}"  
end
def turn(board)
  validation = false
  until (validation)
    puts "Please enter 1-9:"
    indice = gets.chomp
    indice = input_to_index(indice)
    if indice >= 0
      validation = true
    end
    valid_move?(board,indice)
    move(board, indice, valor = "X")
    display_board(board)
  end
end

def input_to_index(pos)
  pos = pos.to_i
  pos = pos - 1
end
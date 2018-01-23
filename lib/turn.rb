def valid_move?(board, index) #Verificar si el movimiento que se desea hacer, es valido
  isValid = false
  if !position_taken?(board, index) && index.between?(0,8)
    !isValid
  else
    isValid
  end
end

def position_taken?(board, index) #Verifica si la posicion no esta ocupada
  isHere = false
  if board[index] == " " || board[index] == ""
    isHere
  elsif board[index] == nil
    isHere
  else
    !isHere
  end
end

def display_board(board) #Imprime el estado actual del juego
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def move(board, index, caracter = "X") #Realiza el movimiento en el tablero
  board[index] = caracter
end

def input_to_index(cadena) #Convierte la posicion del movimiento que el jugador realiza, a una posicion valida para el tablero
  index = cadena.to_i
  index -= 1
end

def turn(board)
  puts "Please enter 1-9:"
  int = gets.strip
  index = input_to_index(int)
  if !valid_move?(board,index)
    turn(board)
  end
  move(board, index, "X")
  display_board(board)
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  position_taken?(board,index)
  if valid_move?(board,index)
    move(board,index)
    display_board(board)
 else
   turn(board)
end
end

# do corrections if any else without rescue means if ke baad kahi end aa gaya ya phir else ke baad end choot gaya ok
     def move(board,index,value="X")
      board[index]=value
      return board
    end
      def input_to_index(input)
        return input.to_i - 1
      end
   def position_taken?(board,index)
    return false if((board[index] == "")||(board[index] == " ")||(board[index] == nil))
    else
    true
  end
     def valid_move?(board,index)
       return true if position_taken?(board,index)== false && index.between?(0,8)
      else
      false
     end

     def display_board(board)
       puts " #{board[0]} | #{board[1]} | #{board[2]} "
       puts "-----------"
       puts " #{board[3]} | #{board[4]} | #{board[5]} "
       puts "-----------"
       puts " #{board[6]} | #{board[7]} | #{board[8]} "
     end

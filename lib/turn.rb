def turn(b)
  puts "Please enter 1-9:"
  i = input_to_index(gets.strip)
  until valid_move?(b,i) == true
    puts "Not a valid move, please enter 1-9:"
    i = input_to_index(gets.strip)
  end
  display_board(move(b,i))
end

def display_board(b)
  puts " #{b[0]} | #{b[1]} | #{b[2]} "
  puts "-----------"
  puts " #{b[3]} | #{b[4]} | #{b[5]} "
  puts "-----------"
  puts " #{b[6]} | #{b[7]} | #{b[8]} "
end

#Converts user input to index
def input_to_index(i)
  i = i.to_i - 1
end

#move, taking bit, i.e board array 'b', index 'i' and token 't'
def move(b,i,t ="X")
    b[i] = t
    return b
end

def valid_move?(b,i)
    if position_taken?(b,i) == false && (i <= 8 && i >= 0)
      true
    else
      false
    end
end


def position_taken?(b,i)
  if b[i] == "" || b[i] == " " || b[i] == nil
    false
  elsif b[i] == "X" || b[i] == "O"
    true
  end
end

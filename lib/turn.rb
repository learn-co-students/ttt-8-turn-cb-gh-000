def display_board(str)
  puts " #{str[0]} | #{str[1]} | #{str[2]} "
  puts "-----------"
  puts " #{str[3]} | #{str[4]} | #{str[5]} "
  puts "-----------"
  puts " #{str[6]} | #{str[7]} | #{str[8]} "
end

def input_to_index(n)
  n = n.to_i - 1
end

def valid_move?(arr,ind)
  if arr[ind] == " " or arr[ind] == "" or arr[ind] == nil and ind >= 0 and ind <= 8
    true
  else
    false
  end
end
def turn(arr,value = "X")
  puts "Please enter 1-9:"
  input = gets.strip
  input = input_to_index(input)
  if valid_move?(arr,input)
    arr[input] = value
    display_board(arr)
  else
    turn(arr,value)
  end
end
def move(arr,idx,value)
  if valid_move?(arr,idx)
    arr[idx] = value
  end
end

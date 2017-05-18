def display_board(b)
  out = ""
  3.times do |i|
    3.times {|j| out += " #{b[3*i+j]} |"}
    out = "#{out[0,out.size-1]}\n"
    if i < 2
      11.times {|k| out += "-"}
      out += "\n"
    end
  end
  puts out
end

def valid_move?(b, i)
  return i.between?(0,8) && !(!!b[i] && b[i].strip != "")
end

def move(b, i, c="X")
  b[i] = c
end

def input_to_index(i)
  return i.to_i - 1
end

def turn(b)
  puts "Please enter 1-9:"
  i = input_to_index(gets.strip)
  puts i
  if valid_move?(b, i)
    move(b,i)
    display_board(b)
  else
    turn(b)
  end
end

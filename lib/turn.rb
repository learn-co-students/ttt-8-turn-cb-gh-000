
def display_row(a, b , c)
  puts " #{a} | #{b} | #{c} "
end

def display_board(positions)
  line = "-----------"
  display_row(positions[0], positions[1], positions[2])
  puts line
  display_row(positions[3], positions[4], positions[5])
  puts line
  display_row(positions[6], positions[7], positions[8])
end

def input_to_index(user_input)
  return user_input.to_i - 1
end

def valid_move?(positions, user_input)
  return user_input >= 0 && user_input <= 8 && !position_taken?(positions, user_input)
end

def position_taken?(positions, user_input)
  return ! (positions[user_input] == '' || positions[user_input] == ' ' || positions[user_input] == nil)
end

def move(positions, user_input, player_id='X')
  positions[user_input] = player_id
end

def turn(positions)
  puts "Please enter 1-9:"
  user_input = gets.strip
  user_input = input_to_index(user_input)
  if valid_move?(positions, user_input)
    move(positions, user_input)
  else
    turn(positions)
  end
  display_board(positions)
end

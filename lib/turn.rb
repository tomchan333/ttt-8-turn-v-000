def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def valid_move?(board, input)
  if input.between?(0, 8) && !(position_taken?(board, input))
    return true
  else
    return false
  end
end

def move (board, pos, char = "X")
  board[pos] = char
end

def input_to_index(input)
  input.to_i - 1
end


def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  valid_move?(board, input)
  move (board, input)

end

def position_taken? (board, index)
  if board[index] == " "
    return false
  elsif board[index] == ""
    return false
  elsif board[index] == nil
    return false
  elsif board[index] == "X"
    return true
  elsif board[index] == "O"
    return true
  end
end

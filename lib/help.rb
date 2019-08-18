def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  input_to_index(input)
  if input.between?(0,8) && !position_taken?(board, input)
    move(board, input)
    display_board(board)
  else
    turn(board)
  end
board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
turn(board)

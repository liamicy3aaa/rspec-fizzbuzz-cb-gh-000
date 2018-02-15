def display_board(board)
    puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
    puts "-----------"
    puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
    puts "-----------"
    puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(input)
    index = input.to_i - 1
end

def make_move(board, position, character = "X")
    board[position] = character
end

puts "Welcome to liam's test game of tic tac toe!"
puts "Do you want to play?"
repa = gets.strip
if repa == "n"
    puts "Ok, let me know when you want to play"
elsif repa == "y"
    puts "Good! You want to play"
    puts "First, tell me your name?"
    user_name = gets.strip
    puts("Hello #{user_name}! Thats a lovely name!")
    puts "here is the game board"
    board = [" "," "," "," "," "," "," "," "," "]
    display_board(board)
    9.Times do
      puts "Whats your move #{user_name}?"
      position = gets.strip
      nposition = input_to_index(position)
      make_move(board, nposition)
      puts "here is your move on the board"
      display_board(board)
    end
    
    puts "end of game. Thanks for playing #{user_name}!"
end
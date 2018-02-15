def display_board(board)
    puts(" #{board[0]} | #{board[1]} | #{board[2]} ")
    puts "-----------"
    puts(" #{board[3]} | #{board[4]} | #{board[5]} ")
    puts "-----------"
    puts(" #{board[6]} | #{board[7]} | #{board[8]} ")
end

def input_to_index(input)
    index = input.to_i
end

def make_move(board, position, character = "X")
    board[position] = character
end

puts "Welcome to liam's test game of tic tac toe!"
puts "Do you want to play?"
repa = gets.strip
if repa == "n"
    
elsif repa == "y"
    puts "Good! You want to play"
    puts "here is the game board"
    board = [" "," "," "," "," "," "," "," "," "]
    display_board(board)
    puts "Whats your move?"
    position = gets.strip
    make_move(board, position)
    puts = "here is your move on the board"
    display_board(board)
    puts = "end of game"
end
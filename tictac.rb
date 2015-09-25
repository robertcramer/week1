require 'pry'


board = (1..9).to_a
#defined a variable
#converted numbers 1 - 9 to an array

#can player1 and player2 be to set equal to X and O be a global variable??


# map, all?, any?
def prompt_player
	puts "#{player}'s turn."
	gets.chomp
end

def show_board(board)
  puts "
     #{board[0]} | #{board[1]} | #{board[2]}
     #{board[3]} | #{board[4]} | #{board[5]}
     #{board[6]} | #{board[7]} | #{board[8]}
  "
end

def greeting
	puts "\nWelcome to Tic-Tac-Toe"
end

def player_name(player)
	player
end

def game_over
end



def tictactoe(board)
	greeting
	show_board(board)
	player_1 = "X"
	player_2 = "O"
	current_player = player_1
	until false
	puts "#{current_player}'s Turn"
	board[gets.chomp.to_i-1] = current_player
	show_board(board)
	if current_player == player_1
		current_player = player_2
	else
		current_player = player_1
	end
	end
end

tictactoe(board)
=begin
	
def greeting....Welcome the players to the game of tictactoe.

Ask the users for their names.

Assign X or O to the user

create tictactoe board

def player_guess...recognizes when a player inputs a number in the array and
switches that number in the array to an X or an O 

def take_turn...switch player after each turn

don't let the player guess the same value twice or one that other player has already selected

recognize the values that cause a win.... 

recognize when the game is a draw....

restart game 




	
=end
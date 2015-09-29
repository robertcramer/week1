require 'pry'


board = (1..9).to_a


Win = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],
		[1,4,7],[2,5,8],[0,4,8],[2,4,6]]


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
	puts "Player 1 is X."
end

def player_name(player)
	player
end


def game_over(board)
	win?(board) || draw?(board)
end

def win?(board)
	Win.any? do |x,y,z|
		board[x] == board[y] && board[y] == board[z]
	end
end

def draw?(board)
	available_moves(board).empty?
end

def available_moves(board)
	board.reject { |x| x.is_a?(String) }
end


def postmortem(board, current_player)
	if win?(board)
		winner = current_player
		if current_player == "X"
			current_player = "O"
		else
			current_player = "X"
		end
		puts "Game over. Player #{current_player} wins!"
	else
		puts "Draw. Game Over"
	end
end


def tictactoe(board)
	greeting
	show_board(board)
	player_1 = "X"
	player_2 = "O"
	current_player = player_1
	until game_over(board)
		puts "#{current_player}'s Turn"
		board[gets.chomp.to_i-1] = current_player
		show_board(board)
		if current_player == player_1
			current_player = player_2
		else
			current_player = player_1
		end
	end
	postmortem(board, current_player)
end
tictactoe(board)

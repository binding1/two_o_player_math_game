require './player'
require './player_turn'
require './questions'

puts "Player 1 - Enter your name!"
player_name_1 = gets.chomp
puts "Player 2 - Enter your name!"
player_name_2 = gets.chomp

player_1 = Player.new(player_name_1)
player_2 = Player.new(player_name_2)

while player_1.score != 0 && player_2.score != 0 do
    current_player = [player_1, player_2].sample
    current_turn = Player_Turn.new(current_player)
    current_turn.turn
end

if player_1.score == 0
    puts "#{player_1.name} is out of lives! #{player_2.name} wins!"
elsif player_2.score == 0
    puts "#{player_2.name} is out of lives! #{player_1.name} wins!"
end
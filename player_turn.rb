require './player'
require './questions'

class Player_Turn
    attr_accessor :question, :player

    def initialize(player)
        @question = Question.new
        @player = player
    end

    def turn
        puts "-----NEW TURN-----"
        puts "#{self.question.question_type[0]}"
        puts "#{self.player.name}:  "
        player_answer = gets.chomp

        if player_answer == self.question.question_type[1].to_s
            puts "#{self.player.name} answered #{player_answer}, which was correct!"
        else 
            puts "#{self.player.name} answered #{player_answer}, which was incorrect..."

            self.player.subtract_score
            
            if self.player.score == 0
                puts "#{self.player.name} has no score left!"
            else
                puts "#{self.player.name} has #{self.player.score}/3 left!"
            end
        end
    end
end




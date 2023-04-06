class Question
    attr_accessor :type, :num1, :num2
    
    def initialize
        @type = ['add', 'sub', 'mul'].sample
        @num1 = rand(1...99)
        @num2 = rand(1...99)
    end

    def question_type
        if self.type == 'add'
            @question = self.add
            @answer = self.num1 + self.num2
            return @question, @answer
        elsif self.type == 'sub'
            @question = self.sub
            @answer = self.num1 - self.num2
            return @question, @answer
        elsif self.type == 'mul'
            @question = self.mul
            @answer = self.num1 * self.num2
            return @question, @answer
        end
    end

    def add
        "What is #{self.num1} + #{self.num2}?"
    end

    def sub
        "What is #{self.num1} - #{self.num2}?"
    end

    def mul
        "What is #{self.num1} * #{self.num2}?"
    end
end
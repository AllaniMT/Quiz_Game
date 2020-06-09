class Quiz
    attr_accessor :questionOfTheQuiz, :answerOfTheQuiz
    def initialize (theQuestion, answer)
        @questionOfTheQuiz = theQuestion
        @answerOfTheQuiz = answer
    end
end

q1 = "what is my name? \n (a)Mohamed \n (b)Tayeb) \n (c)Allani"
q2 = "how old am i? \n (a)20 \n (b)25 \n (c)30"
q3 = "where am i from? \n (a)Tunisia \n (b)Germany \n (c)USA"

questions = [
    Quiz.new(q1, "a"),
    Quiz.new(q2, "b"),
    Quiz.new(q3, "a")
]

def runTest(questions)
    answer = ""
    score = 0
    for question in questions
        puts question.questionOfTheQuiz
        answer = gets.chomp()
        if answer == question.answerOfTheQuiz
            score +=1
        end
    end
    puts "your score is: " + score.to_s + "/" + questions.length().to_s
end

runTest(questions)
class Question
  def initialize
    @num1 = rand(1...10)
    @num2 = rand(1...10)
    @answer = @num1 + @num2
  end

  def create_question()
    "What does #{@num1} plus #{@num2} equal?"
  end

  def is_correct?(answer)
    @answer == answer
  end
end

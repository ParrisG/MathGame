class Question
  attr_reader :ask, :answer

  def initialize
    @num_a = rand(21)
    @num_b = rand(21)
    @ask = "What does #{@num_a} plus #{@num_b} equal?"
    @answer = @num_a + @num_b
  end

end

# q = Question.new()
# puts q.ask
# puts q.answer

# q = Question.new()
# puts q.ask
# puts q.answer

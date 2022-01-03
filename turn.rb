class Turn
  def initialize(player)
    puts "----- NEW TURN -----"
    question = Question.new
    puts "#{player.name}: #{question.create_question}"
    @answer = gets.chomp.to_i
    if question.is_correct?(@answer)
      puts "#{player.name}: YES! You are correct."
    else
      player.lose_life
      puts "#{player.name}: Seriously? No!"
    end
  end
end

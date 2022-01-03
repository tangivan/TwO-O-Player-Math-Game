class Game
  attr_accessor :current_player
  attr_reader :p1, :p2
  
  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @current_player = @p1
  end

  def start_game()
    puts "Starting new game..."
    while @p1.lives > 0 && @p2.lives > 0
      if @current_player == @p1
        Turn.new(@p1)
        puts "P1: #{@p1.lives}/3 vs P2:#{@p2.lives}/3"
      else
        Turn.new(@p2)
        puts "P1: #{@p1.lives}/3 vs P2:#{@p2.lives}/3"
      end
    @current_player == @p1 ? @current_player = @p2 : @current_player = @p1 
    end
    @p1.lives != 0 ? (puts "Player 1 wins with a score of #{@p1.lives}/3") : (puts "Player 2 wins with a score of #{@p2.lives}/3") 
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end
end

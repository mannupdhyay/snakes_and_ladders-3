class GameEngine

  attr_reader :players, :board, :die 
  attr_accessor :current_player

  def initialize(board, die)
    @players = []
    @board = board
    @die = die
    @current_player = ""
  end

  def greet()
    puts "Hi!"
  end

  def end()
    puts "Bye!"
  end

  def won?(position)
    position >= 100 ? true : false
  end

  def populate_with_player(player)
    @players << player
  end

  def switch_players()
    current_player_index = @players.index(@current_player)
    if current_player_index == @players.length - 1
      @current_player = @players[0]
    else
      new_player_index = current_player_index + 1
      @current_player = @players[new_player_index]
    end
  end




end


# turn:

# WHILE game status = not won 
# player = whoever
# position = whatever
# -role dice
# -move (updates position)
#   -if position = won? == true
#     then return game status = won
#   elsif  position = ladder.start hash
#     then move again
#   elsif position = snake.start hash
#     then move again
#   else 
#     position = position
#   end
# - change player 

 

      






  


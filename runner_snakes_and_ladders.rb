require_relative "player"
require_relative "die"
require_relative "board"
require_relative "ladder"
require_relative "snake"
require_relative "game"

#################

@player1 = Player.new("Jake")
@player2 = Player.new("Sam")
@board1 = Board.new(100)
@ladder1 = Ladder.new(4, 14)
@snake1 = Snake.new(17, 7)
@die1 = Die.new(6)
@game1 = GameEngine.new(@board1, @die1)

@game1.populate_with_player(@player1)
@game1.populate_with_player(@player2)

#################

@game1.greet()

@game1.turn()

@game1.end_message()

puts @game1.current_player


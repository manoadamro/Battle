
class Game
  attr_reader :player1, :player2, :turn

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def attack
    if @turn == 1
      @player2.hp -= 10
      @turn = 2
      "#{player1.name} attacked #{player2.name}"
    else
      @player1.hp -= 10
      @turn = 1
      "#{player2.name} attacked #{player1.name}"
    end
  end
end

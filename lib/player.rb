
# in lib/player.rb
class Player
  attr_accessor :name, :hp
  def initialize(name, hp = 100)
    @name = name
    @hp = hp
  end
end

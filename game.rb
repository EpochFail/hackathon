require "chingu"

include Gosu
include Chingu

require_rel 'game_objects/*'
require_rel 'game_states/*'
require_rel 'midi_player'

class Game < Window
  def intialize
    super(1000,300)
  end
  def setup
    push_game_state(Level1)
  end
end

Game.new.show
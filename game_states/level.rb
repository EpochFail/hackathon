class Level < GameState  
  traits :viewport
  def setup
    self.input = {:escape => :exit, :e => :edit }
    
    @file = File.join(ROOT, "level1.yml")
    load_game_objects(:file => @file)
    
    @grid = [10,10]
    
    @player = Player.create(:x => 100, :y => 200)
    self.viewport.center_around(@player)
  end
  
  def edit
    push_game_state GameStates::Edit.new(:grid => @grid, :except =>[Player], :file => @file)
  end
  
  def update
    super
  end
  
  def draw
    super
  end
end

class Level1 < Level; end
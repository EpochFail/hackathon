class Level < GameState  
  def setup
    self.input = {:escape => :exit, :e => :edit }
    
    @file = File.join(ROOT, "level1.yml")
    load_game_objects(:file => @file)
    
    @grid = [10,10]
  end
  
  def edit
    push_game_state GameStates::Edit.new(:grid => @grid, :file => @file)
  end
  
  def update
    super
  end
  
  def draw
    super
  end
end

class Level1 < Level; end
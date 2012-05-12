class Level < GameState  
  def setup
    self.input = {:escape => :exit} 
  end
  
  def update
    super
  end
  
  def draw
    super
  end
end

class Level1 < Level; end
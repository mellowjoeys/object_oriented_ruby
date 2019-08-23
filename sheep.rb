class Sheep
  def initialize
    @@count += 1
    @id = @@count
    @awake_percentage = rand(1..100)
    sound = "hey"
  end

  def bleet
  end

  def id
    @id
  end
  
  def self.how_many
    @@count
  end

  def is_awake?
    awake_percentage > 50
  end

private
  def awake_percentage. #cannot access awake_percentage from outside of class, but can access indirectly through other methods.  
    @awake_percentage
  end
end


sheep = Sheep.new
Sheep.how_many

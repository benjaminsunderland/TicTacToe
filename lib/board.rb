class Board

  attr_accessor :grid

  def initialize
    @grid = Array.new( 3, Array.new(3, 0) )
  end
end

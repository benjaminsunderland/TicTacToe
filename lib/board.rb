class Board

  attr_accessor :grid

  def initialize
    @grid = [[nil,nil,nil],
             [nil,nil,nil],
             [nil,nil,nil]]
  end

  def printb
   @grid.each do |row|
     print "|"
     row.each { |cell| print "#{cell}|" }
     puts "\n-------"
   end
 end
end

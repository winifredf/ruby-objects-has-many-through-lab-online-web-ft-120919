class Artist
  
  attr_accessor :names, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = songs
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
end
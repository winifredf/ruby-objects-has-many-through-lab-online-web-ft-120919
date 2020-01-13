class Genre
  
  attr_accessor :name, :song, :artist
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = songs
    @artist = artist
    @@all << self
  end
  
  def self.all
    @@all
  end
end
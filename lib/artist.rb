class Artist
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def song
    Song.all.select {|song| song.artist == self}
  end
  
  def self.all
    @@all
  end
  
end
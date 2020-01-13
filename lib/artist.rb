class Artist
  
  attr_accessor :name, :song, :genre
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = song
    @genre = genre
    @@all << self
  end
  
  def song
    Song.all.select {|song| song.artist == self}
  end
  
  def genre
    songs.map {|song| song.genre}
  end
  
  def self.all
    @@all
  end
  
  def new_song(song, genre)
    Song.new(name, self, genre)
  end
end
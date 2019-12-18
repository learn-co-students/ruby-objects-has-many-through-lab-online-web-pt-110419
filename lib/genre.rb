class Genre 
  attr_accessor :songs, :genre, :name
  @@all = []
  
  def initialize(genre)
    @name = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, artist)
    Song.new(name, artist, self)
  end
  
  def songs
    Song.all.select {|song| song.genre == self}
  end
  
  def artists
    self.songs.collect {|song| song.artist}
  end
  
end
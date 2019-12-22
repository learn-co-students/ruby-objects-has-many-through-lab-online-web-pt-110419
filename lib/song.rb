class Song 
  attr_accessor :artist, :genre 
  
  @@all = []
  
  def initialize(artist, genre)
    @artist = artist
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

madonna = Artist.new("Madonna")
pop = Genre.new("pop")

into_the_groove = Song.new("Into the Groove", madonna, pop)

class Artist 
  attr_accessor :song, :genre 
  
  @@all = []
  
  def initialize(song, genre)
    @song = song
    @genre = genre
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

madonna = Artist.new("Madonna")

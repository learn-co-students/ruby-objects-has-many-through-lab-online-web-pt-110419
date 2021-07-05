class Genre  
  attr_accessor :song, :artist 
  
  @@all = []
  
  def initialize(song, artist)
    @song = song
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

pop = Genre.new("pop")

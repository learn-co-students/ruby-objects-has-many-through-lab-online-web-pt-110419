require'pry'

class Artist
  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
   @@all
  end

  def songs
    Song.all.select{|song| song.artist == self}
  end

  def new_song(name, artist, genre)
    if !genre == "Nerd Rock"
      song = Song.new(name, self, genre)
    end
  end

end

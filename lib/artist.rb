class Artist
    
attr_reader :name

@@all = []

def self.all
    @@all
end

def initialize(name)
    @name = name
    @songs = []
    @@all << self
end

def new_song(song, genre)
    song = Song.new(song, self, genre)
end
def songs
    @songs = []
    Song.all.each{|song|
        if song.artist == self
            @songs << song
          end
    }
            @songs
        end
    def genres
      @genres = []
      songs.each{|song| @genres << song.genre}
      @genres
end
end
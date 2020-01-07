class Genre
    require 'pry'

attr_reader :name
attr_accessor :songs, :artists
@@all = []

def self.all
    @@all
end

def initialize(name)
    @name = name
    @songs = []
    @artists = []
    @@all << self
end

def songs
    @songs = []
    Song.all.each{|song|
        if song.genre == self
            @songs << song
            @songs
        end
                 }

end

def artists
    @artists = []
    songs.each{|song| @artists << song.artist}
    @artists
end
end
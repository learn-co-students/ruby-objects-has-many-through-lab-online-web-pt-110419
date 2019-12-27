
class Genre
   attr_accessor :name, :song, :artist

   @@all = []

   def initialize(name)
     @name = name
     @@all << self
   end

   def self.all
     @@all
   end

   def songs
      Song.all.select{|song| song.genre == self}
   end

   def artists
     all_art = []
     Song.all.select do |song|
       if song.genre == self
         all_art << song.artist
       end
     end
     return all_art
   end

   

end

class Artist 
  @@all = [] 
  attr_accessor :name 
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  
  
  def self.all 
    @@all
  end 
  
  def new_song(name,genres)
   new_songs = Song.new(name,self,genres)
   
   new_songs
   end 
    
  def songs
    Song.all.select{|song| song.artist == self}
  end 
  
  def genres 
    songs.map do |song|
      song.genre 
    end 
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 
  
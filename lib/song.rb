class Song 
  @@all = [] 
  attr_accessor :artist , :genre  , :name 
  
  def initialize(title,artist , genre )
    @name  = title 
    @genre = genre 
    @artist = artist 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
end 
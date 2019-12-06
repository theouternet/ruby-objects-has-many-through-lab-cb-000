class Genre 
  
  attr_accessor :name, :artist, :genre
  
  @@all = []
  
 def initialize(name)
   @name = name 

   @@all << self 
 end
 
 def songs 
   Song.all.select{|s| s.genre == self}
 end
 
 def artists
    self.songs.collect{|a| a.artist}
  end
 
 
 def self.all 
   @@all 
 end 
 
  
  
end
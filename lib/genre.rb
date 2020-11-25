require 'pry'
class Genre
  attr_accessor :name, :song
  @@all=[]

  def initialize(name)
    @name=name
    @song=song
    @@all << self
  end 

  def self.all
    @@all
  end 
  
  def songs
    Song.all { |song| song.genre == self}
  end 

  def artists
    songs.map(&:artist)
 
  end 

end 
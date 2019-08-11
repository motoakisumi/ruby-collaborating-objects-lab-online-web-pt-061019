class Artist
  
  attr_accessor :name, :songs
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.select {|song| song.artist == self}
  end
  
  def add_song
    @songs << Song.select{|song| song.artist == self}
  
end

  
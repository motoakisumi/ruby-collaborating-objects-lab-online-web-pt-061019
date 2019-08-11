require 'pry'

class Song
  attr_accessor :name, :artist, :artist_name
  
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def self.new_by_filename(str)
    song = self.new(str.split(" - ")[1])
    artist_object = Artist.find_or_create_by_name(str.split(" - ")[0])
    song.artist = artist_object
    song
  end

end

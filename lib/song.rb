require 'pry'

class Song
  attr_accessor :name, :artist

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
  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end

end

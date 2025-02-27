class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    Dir.glob("#{path}/*.mp3").collect {|file| file.gsub("#{path}/", "")}
    # Dir.children(self.path) faster way to run
  end
  
  def import
    files.each {|file| Song.new_by_filename}
  end
end  
    
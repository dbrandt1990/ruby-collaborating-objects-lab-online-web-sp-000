class MP3Importer
  attr_reader :path
  
  def initialize (file_path)
    @path = file_path
  end
  
  def files
    @files ||= Dir.entries(@path).select { |song| !File.directory?(song) && song.end_with?(".mp3") }
  end
  
  def import 
    
  
end
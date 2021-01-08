class MP3Importer
  attr_accessor :files
  attr_reader :path
  
  def initialize (file_path)
    @path = file_path
    @files = []
  end
  
  def files
    @files ||= Dir.entries(@path).glob("*.mp3")
  end
  
end
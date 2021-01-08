class MP3Importer
  attr_accessor :files
  attr_reader :path
  
  def initialize (file_path)
    @path = file_path
    @files = []
  end
  
  def files
    @files ||= Dir.entries(@path).select {|file| file.ends_with}
  end
  
end
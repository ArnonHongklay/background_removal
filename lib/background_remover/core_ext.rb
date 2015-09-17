module BackgroundRemover
  @path = nil

  class << self
    attr_accessor :path
  end

  def self.loader(link, path)
    img = BackgroundRemover::Loader.new("link", "path")
  end

  def self.processor(path)
    ps = BackgroundRemover::Processor.new("path")
  end
end

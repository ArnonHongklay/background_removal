module BackgroundRemover
  @path = "./"

  @path_original = nil
  @path_finalize = nil

  class << self
    attr_accessor :path, :path_original, :path_finalize
  end

  def self.loader(link)
    img = BackgroundRemover::Loader.new(link, @path_original)
    self.processor(img)
  end

  def self.processor(img)
    ps = BackgroundRemover::Processor.new(img, @path_original, @path_finalize)
  end
end

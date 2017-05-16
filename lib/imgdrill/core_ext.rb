module Imgdrill
  @path = "./"

  # @path_original = nil
  # @path_finalize = nil

  class << self
    attr_accessor :path
    # :path_original, :path_finalize
  end

  def self.processor(img, flag=nil)
    if flag.nil?
      BackgroundRemover::Processor.new(img, @path)
    else
      BackgroundRemover::Processor_with_flag.new(img, flag, @path)
    end
  end

  # def self.loader(link)
  #   img = BackgroundRemover::Loader.new(link, @path_original)
  #   self.processor(img)
  # end
end

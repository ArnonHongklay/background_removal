module BackgroundRemover
  class Processor
    attr_accessor :path

    def initialize(path)
      raise "Please put path to BGRM::Processor(path)" if path.nil?

      self.path = path

      `ls -al`
    end
  end
end

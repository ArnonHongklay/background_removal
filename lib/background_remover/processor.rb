module BGRM
  class Processor
    attr_accessor :path

    def initialize(path)
      raise "Please put path to BGRM::Processor(path)" unless path.nil?

      self.path = path

      `ls -al`
    end
  end
end

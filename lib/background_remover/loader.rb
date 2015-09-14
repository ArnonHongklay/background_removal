module BGRM
  class Loader
    attr_accessor :link, :path, :pattern

    def initialize(link, path, pattern=nil)
      raise "Please put link and path in BGRM::Loader(link, path)" unless link.nil? or path.nil?

      self.link     = link
      self.path     = path
      self.pattern  = pattern

      agent = Mechanize.new
      agent.get(link).save "#{@path}#{name}"
    end
  end
end

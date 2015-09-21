module BackgroundRemover
  class Loader
    attr_accessor :img, :filename

    def initialize(link, path_original, pattern=nil)
      raise "Please put link and path in loader(link, path)" if link.nil? or path_original.nil?

      # http://www.trollheaven.com/wp-content/uploads/2015/02/esq-00-women-pp.jpg
      agent     = Mechanize.new
      temp      = agent.get(link)

      @filename = "#{Time.now.to_i}-#{temp.filename}"

      pattern ||= "#{path_original}/#{@filename}"
      temp.save pattern

      @img      = pattern
    end
  end
end

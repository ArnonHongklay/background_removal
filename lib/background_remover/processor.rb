module BackgroundRemover
  class Processor
    attr_accessor :img_original, :img_finalize

    def initialize(img, path)
      raise "Please put path to processor(img, path)" if img.nil? and path.nil?

      # temp = img.filename.gsub('.jpg', '.png')
      #
      # unless img.filename.last(3) == 'png'
      #   @img_original = "#{path_original}/#{temp}"
      #
      #   `convert "#{path_original}/#{img.filename}" #{@img_original}`
      # end

      # @img_finalize = "#{path_finalize}/#{temp}"
      #
      # `DRILL=10`
      # `convert "#{img_original}" -bordercolor white -border 1x1 -matte -fill none -fuzz $DRILL% -draw "matte 1,1 floodfill" -shave 1x1 "#{@img_finalize}"`
      # `composite -compose Dst_Over -tile pattern:checkerboard "#{@img_finalize}" "#{path_finalize}/check-#{temp}"`


      # http://www.boohoo.com/content/ebiz/boohoo/invt/dzz98777/dzz98777_black_default_l.jpg
      # http://images.asos-media.com/inv/media/8/1/6/1/5641618/black/image1xxl.jpg
      agent = Mechanize.new
      filename = agent.get(img).filename
      temp = `identify #{img} | awk '{print $3}'`
      width = temp.split(/x/)[0]
      `convert #{img} -fuzz 15% -fill none -draw "matte #{width.to_i-10},10 floodfill" #{path}/#{filename.split(/\./)[0]}.png`
      `convert #{path}/#{filename.split(/\./)[0]}.png -fuzz 15% -fill none -draw "matte 10,10 floodfill" #{path}/#{filename.split(/\./)[0]}.png`
    end
  end
end

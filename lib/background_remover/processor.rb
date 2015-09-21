module BackgroundRemover
  class Processor
    attr_accessor :img_original, :img_finalize

    def initialize(img, path_original, path_finalize)
      raise "Please put path to processor(img, path)" if img.nil? or path_original.nil? or path_finalize.nil?

      temp = img.filename.gsub('.jpg', '.png')

      unless img.filename.last(3) == 'png'
        @img_original = "#{path_original}/#{temp}"

        `convert "#{path_original}/#{img.filename}" #{@img_original}`
      end

      @img_finalize = "#{path_finalize}/#{temp}"

      `DRILL=10`
      `convert "#{img_original}" -bordercolor white -border 1x1 -matte -fill none -fuzz $DRILL% -draw "matte 1,1 floodfill" -shave 1x1 "#{@img_finalize}"`
      `composite -compose Dst_Over -tile pattern:checkerboard "#{@img_finalize}" "#{path_finalize}/check-#{temp}"`
    end
  end
end

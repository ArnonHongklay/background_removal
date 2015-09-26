module BackgroundRemover
  class Processor
    # attr_accessor :img_original, :img_finalize

    def initialize(img, path)
      raise "Please put path to processor(img, path)" if img.nil? and path.nil?

      # http://www.boohoo.com/content/ebiz/boohoo/invt/dzz98777/dzz98777_black_default_l.jpg
      # http://images.asos-media.com/inv/media/8/1/6/1/5641618/black/image1xxl.jpg

      # BackgroundRemover.processor("http://paperclip1.squakapp.com/sis_post_items/photos/000/460/413/u_350/87ce2a6927ebd1e9a592a3f423a2ec09.jpg?1441550401")
      # img = "http://paperclip1.squakapp.com/sis_post_items/photos/000/460/413/u_350/87ce2a6927ebd1e9a592a3f423a2ec09.jpg?1441550401"

      agent = Mechanize.new
      filename = agent.get(img).filename
      temp = `identify #{img} | awk '{print $3}'`
      width = temp.split(/x/)[0]
      height = temp.split(/x/)[0].gsub("\n","")
      drill = 10

      `convert #{img} -fuzz #{drill}% -fill none -draw "matte #{width.to_i-10},10 floodfill" #{path}/#{filename.split(/\./)[0]}.png`
      `convert #{path}/#{filename.split(/\./)[0]}.png -fuzz #{drill}% -fill none -draw "matte 10,10 floodfill" #{path}/#{filename.split(/\./)[0]}.png`
      `convert #{path}/#{filename.split(/\./)[0]}.png -fuzz #{drill}% -fill none -draw "matte 10,#{height.to_i-10} floodfill" #{path}/#{filename.split(/\./)[0]}.png`
      `convert #{path}/#{filename.split(/\./)[0]}.png -fuzz #{drill}% -fill none -draw "matte #{width.to_i-10},#{height.to_i-10} floodfill" #{path}/#{filename.split(/\./)[0]}.png`
      `composite -compose Dst_Over -tile pattern:checkerboard #{path}/#{filename.split(/\./)[0]}.png #{path}/#{filename.split(/\./)[0]}.png`
    end
  end
end

module BackgroundRemover
  class Processor_with_flag

    def initialize(img, flag, path)
      raise "Please put path to processor(img, path)" if img.nil? and flag.nil? and path.nil?
      agent = Mechanize.new
      filename = agent.get(img).filename

      `DRILL=10`
      `convert "#{img}" -bordercolor white -border 1x1 -matte -fill none -fuzz $DRILL% -draw "matte 1,1 floodfill" -shave 1x1 #{path}/#{filename.split(/\./)[0]}.png`
      # `composite -compose Dst_Over -tile pattern:checkerboard "#{@img_finalize}" "#{path_finalize}/check-#{temp}"`
    end
  end
end

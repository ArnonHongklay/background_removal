require 'background_remover/core_ext'
require 'background_remover/load_image'

module BackgroundRemover
  class Base
    include Singleton

    def name
      "BackgroundRemover"
    end
  end
end

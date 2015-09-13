require 'background_remover/core_ext'

module BackgroundRemover
  class Base
    include Singleton

    def name
      "BackgroundRemover"
    end
  end
end

# frozen_string_literal: true

module Ixe
  module Play
    module Players
      class Vlc
        name = 'vlc'
        config = '--no-config --no-audio-display'
        format = '--ytdl-format="bestvideo[height<=?1080]+bestaudio/best"'

        def to_s
          %(#{name} #{config} #{format})
        end
      end
    end
  end
end

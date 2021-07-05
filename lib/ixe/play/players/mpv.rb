# frozen_string_literal: true

module Ixe
  module Play
    module Players
      # a free, open source, and cross-platform media player
      class Mpv
        attr_accessor :name, :config, :format, :site, :documentation

        def initialize
          @name = 'mpv'
          @config = '--no-config --no-audio-display'
          @format = '--ytdl-format="bestvideo[height<=?1080]+bestaudio/best"'
          @site = 'https://mpv.io/'
          @documentation = 'https://mpv.io/manual/'
        end

        def to_s
          %(#{name} #{config} #{format})
        end
      end
    end
  end
end

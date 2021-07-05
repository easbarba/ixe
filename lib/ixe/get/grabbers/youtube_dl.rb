# frozen_string_literal: true

require 'pathname'

module Ixe
  module Get
    # Avaialable grabbers
    module Grabbers
      # A command-line program to download videos from videos sites.
      class Youtube_dl
        attr_accessor :name, :parser, :out, :ext, :title, :audio, :video

        def initialize
          @name = 'youtube-dl'
          @parser = '--get-filename -o'
          @out = '--output'
          @ext = '%(ext)s'
          @title = '%(title)s'
          @audio = '--extract-audio --audio-format'
          @video = '--recode-video'
        end

        def to_s
          %(#{name} #{audio} #{video})
        end
      end
    end
  end
end

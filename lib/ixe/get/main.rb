# frozen_string_literal: true

require 'pathname'

module Ixe
  module Get
    # Main caller
    class Main
      attr_reader :info

      def initialize(codec, url)
        current = Ixe::Get::Grabbers::Youtube_dl.new
        @info = Ixe::Get::Info.new(url, codec, current)
      end

      def run
        Ixe::Get::Getting.new(info).exec
      end
    end
  end
end

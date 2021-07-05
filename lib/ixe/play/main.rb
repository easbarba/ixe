# frozen_string_literal: true

module Ixe
  # Play file, random media in folder or with url.
  module Play
    # ax s
    class Main
      def self.pick_random_media_in_folder(folder)
        file = folder.children.sample
        folder.join(file).to_path
      end

      attr_accessor :media, :player

      def initialize(media)
        @media = media
        @player = Players::Mpv.new
      end

      def pick_media
        filepath = Pathname.new(media)
        return filepath.to_path if filepath.file?

        return pick_random_media_in_folder(filepath) if filepath.directory?

        media
      end

      def player_settings
        "#{player.name} #{player.config} #{player.format}"
      end

      def final_command
        "#{player_settings} #{pick_media}"
      end

      def run
        system final_command
      end
    end
  end
end

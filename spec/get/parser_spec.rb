# frozen_string_literal: true

require 'ixe'

require 'spec_helper'

module Ixe
  module Get
    RSpec.describe 'Holy Parser' do
      url = 'https://odysee.com/@SystemCrafters:e/installing-the-gnu-guix-package-manager:c'
      current = Ixe::Get::Grabbers.new.youtube_dl
      let(:parser) { Ixe::Get::Parser.new current, url }

      it 'New format' do
        parser.fmt = :ext
        expect(parser.new_format).to eq('%(ext)s')
      end

      it 'Base two' do
        parser.fmt = :title
        expect(parser.base).to eq("youtube-dl --get-filename -o '%(title)s' #{url}")
      end
    end
  end
end

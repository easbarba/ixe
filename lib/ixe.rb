# frozen_string_literal: true

require_relative 'ixe/version'

# * Services
require_relative 'ixe/services/utils'
require_relative 'ixe/services/folders'

# * Get
require_relative 'ixe/get/getting'
require_relative 'ixe/get/info'
require_relative 'ixe/get/main'
require_relative 'ixe/get/parser'
require_relative 'ixe/get/grabbers/youtube_dl'

# * Play
require_relative 'ixe/play/main'
require_relative 'ixe/play/players/mpv'

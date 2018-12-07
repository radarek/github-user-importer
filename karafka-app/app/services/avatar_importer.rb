# frozen_string_literal: true
require_relative 'git_hub_importer'

class AvatarImporter < GitHubImporter
  def avatar_url
    Karafka.logger.info "Fecznąłem avatar"
    user.avatar_url
  end
end

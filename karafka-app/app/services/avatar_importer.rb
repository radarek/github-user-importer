# frozen_string_literal: true
require_relative 'git_hub_importer'

class AvatarImporter < GitHubImporter
  def avatar_url
    user.avatar_url
  end
end

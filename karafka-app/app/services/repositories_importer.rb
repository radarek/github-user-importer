# frozen_string_literal: true
require_relative 'git_hub_importer'

class RepositoriesImporter < GitHubImporter
  def call
    repositories.map { |repository| parse(repository) }
  end

  private

  def repositories
    @repositories ||= user.rels[:repos].get.data
  end

  def parse(repository)
    {
      name: repository.name,
      url: repository.html_url,
      stargazer: repository.stargazers_count,
      created_at: repository.created_at
    }
  end
end

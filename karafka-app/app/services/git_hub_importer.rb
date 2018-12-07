# frozen_string_literal: true

class GitHubImporter
  def initialize(login)
    @login = login
  end

  private

  def user
    @user ||= client.user @login
  end

  def client
    @client ||= Octokit::Client.new
  end
end

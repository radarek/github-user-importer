# frozen_string_literal: true

class RepositoriesConsumer < ApplicationConsumer
  def consume
    repositories_data = RepositoriesImporter.new(params['login']).call
    respond_with(login: params['login'], data: repositories_data)
  end
end

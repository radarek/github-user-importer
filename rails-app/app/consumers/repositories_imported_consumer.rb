class RepositoriesImportedConsumer < ApplicationConsumer
  def consume
    SaveRepositories.new(params['login'], params['data']).call
  end
end

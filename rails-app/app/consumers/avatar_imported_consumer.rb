class AvatarImportedConsumer < ApplicationConsumer
  def consume
    SaveAvatarUrl.new(params['login'], params['avatar_url']).call
  end
end

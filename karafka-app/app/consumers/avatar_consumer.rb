# frozen_string_literal: true

class AvatarConsumer < ApplicationConsumer
  def consume
    avatar_url = AvatarImporter.new(params['login']).avatar_url
    respond_with(login: params['login'], avatar_url: avatar_url)
  end
end

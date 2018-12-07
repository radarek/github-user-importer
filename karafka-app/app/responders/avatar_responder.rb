# frozen_string_literal: true

class AvatarResponder < ApplicationResponder
  topic :avatar_imported
  
  def respond(message)
    respond_to :avatar_imported, message
  end
end

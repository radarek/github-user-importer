# frozen_string_literal: true

class RepositoriesResponder < ApplicationResponder
  topic :repositories_imported

  def respond(message)
    respond_to :repositories_imported, message
  end
end

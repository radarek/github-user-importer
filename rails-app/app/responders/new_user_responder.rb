class NewUserResponder < ApplicationResponder
  topic :new_user

  def respond(user)
    respond_to :new_user, login: user.login
  end
end

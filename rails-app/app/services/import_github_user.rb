class ImportGithubUser
  attr_reader :login, :user

  def initialize(login)
    @login = login
    @user = nil
  end

  def call
    create_user
    dispatch_event
  end

  private

  def create_user
    @user = GithubUser.create!(login: login)
  end

  def dispatch_event
    NewUserResponder.call(user)
  end
end

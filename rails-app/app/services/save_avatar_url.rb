class SaveAvatarUrl
  attr_reader :login, :avatar_url, :user

  def initialize(login, avatar_url)
    @login = login
    @avatar_url = avatar_url
  end

  def call
    find_user
    save_avatar_url
    update_user_status
  end

  private

  def find_user
    @user = GithubUser.find_by!(login: login)
  end

  def save_avatar_url
    user.update!(avatar_url: avatar_url)
  end

  def update_user_status
    user.update!(avatar_imported: true)
  end
end

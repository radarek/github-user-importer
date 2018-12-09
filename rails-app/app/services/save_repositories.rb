class SaveRepositories
  attr_reader :login, :repositories, :user

  def initialize(login, repositories)
    @login = login
    @repositories = repositories
  end

  def call
    find_user
    save_repositories
    update_user_status
  end

  private

  def find_user
    @user = GithubUser.find_by!(login: login)
  end

  def save_repositories
    @repositories.each do |repository_attributes|
      user.repositories.create!(repository_attributes)
    end
  end

  def update_user_status
    user.update!(repositories_imported: true)
  end
end

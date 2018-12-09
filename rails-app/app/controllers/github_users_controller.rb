class GithubUsersController < ApplicationController
  def index
    @github_users = GithubUser.all.order(created_at: 'desc')
  end

  def create
    ImportGithubUser.new(github_user_params[:login]).call

    flash[:notice] = 'New user added and is being imported'
    redirect_to action: 'index'
  end

  private
  
  def github_user_params
    params.require(:github_user).permit(:login)
  end
end

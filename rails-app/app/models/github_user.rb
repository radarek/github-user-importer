class GithubUser < ApplicationRecord
  validates :login, presence: true, uniqueness: true

  has_many :repositories

  def imported?
    avatar_imported? && repositories_imported?
  end
end

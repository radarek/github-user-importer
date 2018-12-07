class Repository < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  validates :stargazers, presence: true, numericality: { only_integer: true }

  belongs_to :github_user
end

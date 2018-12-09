class Repository < ApplicationRecord
  validates :name, presence: true
  validates :url, presence: true
  validates :stargazer, presence: true, numericality: { only_integer: true }

  belongs_to :github_user
end

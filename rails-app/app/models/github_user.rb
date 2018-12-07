class GithubUser < ApplicationRecord
  include AASM

  validates :login, presence: true
  validates :status, presence: true

  has_many :repositories

  aasm(:status) do
    state :created, initial: true
    state :avatar_imported
    state :repositories_imported
    state :imported

    event :import_avatar do
      transitions from: :created, to: :avatar_imported
      transitions from: :repositories_imported, to: :imported
    end

    event :import_repositories do
      transitions from: :created, to: :repositories_imported
      transitions from: :avatar_imported, to: :imported
    end
  end
end

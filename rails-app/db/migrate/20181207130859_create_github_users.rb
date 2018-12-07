class CreateGithubUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :github_users do |t|
      t.string :login, null: false, index: true
      t.string :avatar_url, null: true
      t.string :status, null: false
    end
  end
end

class CreateRepositories < ActiveRecord::Migration[5.2]
  def change
    create_table :repositories do |t|
      t.references :github_user, foreign_key: true
      t.string :name, null: false
      t.string :url, null: false
      t.integer :stargazers, null: false, default: 0
      t.datetime :created_at, null: false
    end
  end
end

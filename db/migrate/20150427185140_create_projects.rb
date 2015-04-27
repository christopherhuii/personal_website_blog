class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :github_url
      t.string :project_url

      t.timestamps null: false
    end
  end
end

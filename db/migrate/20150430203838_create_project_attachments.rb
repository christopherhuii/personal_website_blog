class CreateProjectAttachments < ActiveRecord::Migration
  def change
    create_table :project_attachments do |t|
      t.integer :project
      t.string :image

      t.timestamps null: false
    end
  end
end

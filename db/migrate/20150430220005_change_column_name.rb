class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :project_attachments, :project, :project_id
  end
end

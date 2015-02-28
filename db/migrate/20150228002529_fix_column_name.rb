class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :posts, :tltle, :title
  end
end

class RenameUserIdToProjectId < ActiveRecord::Migration
  def change
    rename_column TestCase, :user_id, :project_id
  end
end

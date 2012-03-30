class AddProjectIdToTestCase < ActiveRecord::Migration
  def change
    add_column :test_cases, :user_id, :integer

  end
end

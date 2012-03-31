class AddTestRunToResults < ActiveRecord::Migration
  def change
    add_column :results, :test_run_id, :integer
  end
end

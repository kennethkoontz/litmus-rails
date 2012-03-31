class RemoveResultFromTestRun < ActiveRecord::Migration
  def change
    remove_column :test_runs, :result_id
  end
end
